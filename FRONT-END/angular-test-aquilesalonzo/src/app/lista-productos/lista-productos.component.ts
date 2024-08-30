import { Component, Inject } from '@angular/core';
import { MatDialogRef, MAT_DIALOG_DATA } from '@angular/material/dialog';
import { ListaProductosserviceService } from '../Servicies/lista-productosservice.service';


@Component({
  selector: 'app-lista-productos',
  templateUrl: './lista-productos.component.html',
  styleUrl: './lista-productos.component.css'
})
export class ListaProductosComponent {

  constructor(
    @Inject(MAT_DIALOG_DATA) public data: any[], 
    private _listaproductosService: ListaProductosserviceService,
    private _dialogRef: MatDialogRef<ListaProductosComponent>,
  ) 
  {
  }

  sendShoppingCar(){
    this._listaproductosService.postProductsList(this.data).subscribe({
        next: (val: any) => {
          this._dialogRef.close(true);
        },
        error: (err: any) => {
          console.error(err);
        },
      });
  }
}
