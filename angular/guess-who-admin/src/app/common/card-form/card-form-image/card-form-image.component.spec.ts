import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CardFormImageComponent } from './card-form-image.component';

describe('CardFormImageComponent', () => {
  let component: CardFormImageComponent;
  let fixture: ComponentFixture<CardFormImageComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ CardFormImageComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(CardFormImageComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
