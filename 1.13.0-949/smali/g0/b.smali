.class public abstract Lg0/b;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BleGattCallback.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract c(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/exception/BleException;)V
.end method

.method public abstract d(Lcom/clj/fastble/data/BleDevice;Landroid/bluetooth/BluetoothGatt;I)V
.end method

.method public abstract e(ZLcom/clj/fastble/data/BleDevice;Landroid/bluetooth/BluetoothGatt;I)V
.end method

.method public abstract f()V
.end method
