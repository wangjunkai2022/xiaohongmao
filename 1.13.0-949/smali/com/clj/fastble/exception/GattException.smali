.class public Lcom/clj/fastble/exception/GattException;
.super Lcom/clj/fastble/exception/BleException;
.source "GattException.java"


# instance fields
.field private d:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/16 v0, 0x65

    const-string v1, "Gatt Exception Occurred! "

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/clj/fastble/exception/BleException;-><init>(ILjava/lang/String;)V

    .line 2
    iput p1, p0, Lcom/clj/fastble/exception/GattException;->d:I

    return-void
.end method


# virtual methods
.method public getGattStatus()I
    .locals 1

    iget v0, p0, Lcom/clj/fastble/exception/GattException;->d:I

    return v0
.end method

.method public setGattStatus(I)Lcom/clj/fastble/exception/GattException;
    .locals 0

    iput p1, p0, Lcom/clj/fastble/exception/GattException;->d:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GattException{gattStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/clj/fastble/exception/GattException;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
