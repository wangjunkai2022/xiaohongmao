.class public Lcom/clj/fastble/exception/ConnectException;
.super Lcom/clj/fastble/exception/BleException;
.source "ConnectException.java"


# instance fields
.field private d:Landroid/bluetooth/BluetoothGatt;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 2

    const/16 v0, 0x65

    const-string v1, "Gatt Exception Occurred! "

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/clj/fastble/exception/BleException;-><init>(ILjava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/clj/fastble/exception/ConnectException;->d:Landroid/bluetooth/BluetoothGatt;

    .line 3
    iput p2, p0, Lcom/clj/fastble/exception/ConnectException;->e:I

    return-void
.end method


# virtual methods
.method public getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    iget-object v0, p0, Lcom/clj/fastble/exception/ConnectException;->d:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method public getGattStatus()I
    .locals 1

    iget v0, p0, Lcom/clj/fastble/exception/ConnectException;->e:I

    return v0
.end method

.method public setBluetoothGatt(Landroid/bluetooth/BluetoothGatt;)Lcom/clj/fastble/exception/ConnectException;
    .locals 0

    iput-object p1, p0, Lcom/clj/fastble/exception/ConnectException;->d:Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method

.method public setGattStatus(I)Lcom/clj/fastble/exception/ConnectException;
    .locals 0

    iput p1, p0, Lcom/clj/fastble/exception/ConnectException;->e:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectException{gattStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/clj/fastble/exception/ConnectException;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bluetoothGatt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/clj/fastble/exception/ConnectException;->d:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-super {p0}, Lcom/clj/fastble/exception/BleException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
