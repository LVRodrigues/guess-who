import { HttpErrorResponse } from "@angular/common/http";
import { ErrorHandler, Injectable, NgZone } from "@angular/core";
import { ErrorDialogService } from "./error-dialog.service";

@Injectable()
export class GlobalErrorHandler extends ErrorHandler {

    constructor(
        private zone: NgZone,
        private dialog: ErrorDialogService
    ) {
      super();
    }

    override handleError(error: any): void {
    if (!(error instanceof HttpErrorResponse)) {
        error = error.rejection; // get the error object
      }
      this.zone.run(() =>
        this.dialog.openDialog(
          error?.message || 'Erro não definido no cliente.',
          error?.status
        )
      );
  
      console.error('Tratamento global de erros: ', error);        
    }
}
