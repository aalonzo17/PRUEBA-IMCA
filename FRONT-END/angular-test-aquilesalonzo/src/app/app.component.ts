import { Component, OnInit, ViewChild } from '@angular/core';
import { MatDialog } from '@angular/material/dialog';
import { ListaProductosComponent } from './lista-productos/lista-productos.component';
import { AppserviceService } from './Servicies/appservice.service';


@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent implements OnInit {

  data: any[] = [];

  shoppingCarData: any[] = [];
  existRecord: any;

  constructor(private _dialog: MatDialog, private _appService: AppserviceService){}

  ngOnInit(): void {
    this.getProductsList();
  }
  openShoppingCar(){
    const dialogRef = this._dialog.open(ListaProductosComponent,{
      width: '550px',
      data: this.shoppingCarData // Pass the array here
    });

    dialogRef.afterClosed().subscribe(result => {
      if(result){
        this.shoppingCarData = [];
      }
    });
  }

  getProductsList(){
    this._appService.getProductsList().subscribe((data: any[])=>{
      this.data = data;
    });
  }

  addNewItem(_item: any){

    this.existRecord = this.shoppingCarData.find(record => record.productoNo === _item.productoNo);

    if(this.existRecord)
    {
      _item.cantidad = _item.cantidad + 1;
    }
    else
    {
      _item.cantidad = 1;
      this.shoppingCarData.push(_item);
    }
  }
}
