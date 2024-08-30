import { TestBed } from '@angular/core/testing';

import { ListaProductosserviceService } from '../Servicies/lista-productosservice.service';

describe('ListaProductosserviceService', () => {
  let service: ListaProductosserviceService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(ListaProductosserviceService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
