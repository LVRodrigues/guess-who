import { HttpErrorResponse } from "@angular/common/http";
import { ErrorHandler, Injectable, NgZone } from "@angular/core";
import { AuthService } from "../auth.service";
import { TokenService } from "../token.service";
import { ErrorDialogService } from "./error-dialog.service";

@Injectable()
export class GlobalErrorHandler extends ErrorHandler {

    constructor(
        private zone: NgZone,
        private dialog: ErrorDialogService,
        private authService: AuthService,
        private tokenService: TokenService
    ) {
      super();
    }

  override handleError(error: any): void {
    if (!(error instanceof HttpErrorResponse)) {
      error = error.rejection; // get the error object
    }
    if (error.status === 401) {
      console.info("Atualizar o token de acesso.");
      this.authService.refreshToken(this.tokenService.getRefreshToken()!).subscribe({
        next: (n) => { },
        error: (error) => {
          console.error("Token inválido.");
          this.authService.logout();
        },
        complete: () => {
          location.reload();
        }
      })
    } else {
      this.zone.run(() =>
        this.dialog.openDialog(
          error?.message || 'Erro não definido no cliente.',
          error?.status
        )
      );
    }
  }
}
