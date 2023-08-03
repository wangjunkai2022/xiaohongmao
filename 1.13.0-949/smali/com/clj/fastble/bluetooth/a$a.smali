.class Lcom/clj/fastble/bluetooth/a$a;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BleBluetooth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clj/fastble/bluetooth/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/clj/fastble/bluetooth/a;


# direct methods
.method constructor <init>(Lcom/clj/fastble/bluetooth/a;)V
    .locals 0

    iput-object p1, p0, Lcom/clj/fastble/bluetooth/a$a;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 2
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/a$a;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/a;->c(Lcom/clj/fastble/bluetooth/a;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 3
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lg0/e;

    if-eqz v1, :cond_0

    .line 7
    check-cast v0, Lg0/e;

    .line 8
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lg0/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v0}, Lg0/a;->a()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x13

    .line 11
    iput v3, v2, Landroid/os/Message;->what:I

    .line 12
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 13
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 14
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    const-string v4, "notify_value"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 15
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 16
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/a$a;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/a;->d(Lcom/clj/fastble/bluetooth/a;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 18
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 20
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 21
    instance-of v1, v0, Lg0/c;

    if-eqz v1, :cond_2

    .line 22
    check-cast v0, Lg0/c;

    .line 23
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lg0/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 24
    invoke-virtual {v0}, Lg0/a;->a()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 25
    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x23

    .line 26
    iput v3, v2, Landroid/os/Message;->what:I

    .line 27
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 28
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 29
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    const-string v4, "indicate_value"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 30
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 2
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/a$a;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/a;->f(Lcom/clj/fastble/bluetooth/a;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 3
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lg0/f;

    if-eqz v1, :cond_0

    .line 7
    check-cast v0, Lg0/f;

    .line 8
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lg0/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v0}, Lg0/a;->a()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x42

    .line 11
    iput v3, v2, Landroid/os/Message;->what:I

    .line 12
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 13
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "read_status"

    .line 14
    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 15
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    const-string v4, "read_value"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 16
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 2
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/a$a;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/a;->e(Lcom/clj/fastble/bluetooth/a;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 3
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lg0/k;

    if-eqz v1, :cond_0

    .line 7
    check-cast v0, Lg0/k;

    .line 8
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lg0/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v0}, Lg0/a;->a()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x32

    .line 11
    iput v3, v2, Landroid/os/Message;->what:I

    .line 12
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 13
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "write_status"

    .line 14
    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 15
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    const-string v4, "write_value"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 16
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothGattCallback\uff1aonConnectionStateChange \nstatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "newState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "currentThread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/clj/fastble/utils/a;->c(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a$a;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {v0, p1}, Lcom/clj/fastble/bluetooth/a;->s(Lcom/clj/fastble/bluetooth/a;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    .line 6
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/a$a;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/a;->m(Lcom/clj/fastble/bluetooth/a;)Lcom/clj/fastble/bluetooth/a$c;

    move-result-object p1

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p1, 0x2

    if-ne p3, p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/a$a;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/a;->m(Lcom/clj/fastble/bluetooth/a;)Lcom/clj/fastble/bluetooth/a$c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x4

    .line 8
    iput p2, p1, Landroid/os/Message;->what:I

    .line 9
    iget-object p2, p0, Lcom/clj/fastble/bluetooth/a$a;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p2}, Lcom/clj/fastble/bluetooth/a;->m(Lcom/clj/fastble/bluetooth/a;)Lcom/clj/fastble/bluetooth/a$c;

    move-result-object p2

    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    if-nez p3, :cond_2

    .line 10
    iget-object p3, p0, Lcom/clj/fastble/bluetooth/a$a;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p3}, Lcom/clj/fastble/bluetooth/a;->n(Lcom/clj/fastble/bluetooth/a;)Lcom/clj/fastble/bluetooth/a$b;

    move-result-object p3

    sget-object v0, Lcom/clj/fastble/bluetooth/a$b;->b:Lcom/clj/fastble/bluetooth/a$b;

    if-ne p3, v0, :cond_1

    .line 11
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/a$a;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/a;->m(Lcom/clj/fastble/bluetooth/a;)Lcom/clj/fastble/bluetooth/a$c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 p3, 0x1

    .line 12
    iput p3, p1, Landroid/os/Message;->what:I

    .line 13
    new-instance p3, Lcom/clj/fastble/data/a;

    invoke-direct {p3, p2}, Lcom/clj/fastble/data/a;-><init>(I)V

    iput-object p3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14
    iget-object p2, p0, Lcom/clj/fastble/bluetooth/a$a;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p2}, Lcom/clj/fastble/bluetooth/a;->m(Lcom/clj/fastble/bluetooth/a;)Lcom/clj/fastble/bluetooth/a$c;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 15
    :cond_1
    iget-object p3, p0, Lcom/clj/fastble/bluetooth/a$a;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p3}, Lcom/clj/fastble/bluetooth/a;->n(Lcom/clj/fastble/bluetooth/a;)Lcom/clj/fastble/bluetooth/a$b;

    move-result-object p3

    sget-object v0, Lcom/clj/fastble/bluetooth/a$b;->c:Lcom/clj/fastble/bluetooth/a$b;

    if-ne p3, v0, :cond_2

    .line 16
    iget-object p3, p0, Lcom/clj/fastble/bluetooth/a$a;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p3}, Lcom/clj/fastble/bluetooth/a;->m(Lcom/clj/fastble/bluetooth/a;)Lcom/clj/fastble/bluetooth/a$c;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p3

    .line 17
    iput p1, p3, Landroid/os/Message;->what:I

    .line 18
    new-instance p1, Lcom/clj/fastble/data/a;

    invoke-direct {p1, p2}, Lcom/clj/fastble/data/a;-><init>(I)V

    .line 19
    iget-object p2, p0, Lcom/clj/fastble/bluetooth/a$a;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p2}, Lcom/clj/fastble/bluetooth/a;->t(Lcom/clj/fastble/bluetooth/a;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/clj/fastble/data/a;->c(Z)V

    .line 20
    iput-object p1, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 21
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/a$a;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/a;->m(Lcom/clj/fastble/bluetooth/a;)Lcom/clj/fastble/bluetooth/a$c;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 2
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/a$a;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/a;->c(Lcom/clj/fastble/bluetooth/a;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 3
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lg0/e;

    if-eqz v1, :cond_0

    .line 7
    check-cast v0, Lg0/e;

    .line 8
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lg0/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v0}, Lg0/a;->a()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x12

    .line 11
    iput v3, v2, Landroid/os/Message;->what:I

    .line 12
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 13
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "notify_status"

    .line 14
    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 15
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 16
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/a$a;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/a;->d(Lcom/clj/fastble/bluetooth/a;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 18
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 20
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 21
    instance-of v1, v0, Lg0/c;

    if-eqz v1, :cond_2

    .line 22
    check-cast v0, Lg0/c;

    .line 23
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lg0/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 24
    invoke-virtual {v0}, Lg0/a;->a()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 25
    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x22

    .line 26
    iput v3, v2, Landroid/os/Message;->what:I

    .line 27
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 28
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "indicate_status"

    .line 29
    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V

    .line 2
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/a$a;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/a;->h(Lcom/clj/fastble/bluetooth/a;)Lg0/d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/a$a;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/a;->h(Lcom/clj/fastble/bluetooth/a;)Lg0/d;

    move-result-object p1

    invoke-virtual {p1}, Lg0/a;->a()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x62

    .line 5
    iput v1, v0, Landroid/os/Message;->what:I

    .line 6
    iget-object v1, p0, Lcom/clj/fastble/bluetooth/a$a;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {v1}, Lcom/clj/fastble/bluetooth/a;->h(Lcom/clj/fastble/bluetooth/a;)Lg0/d;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "mtu_status"

    .line 8
    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "mtu_value"

    .line 9
    invoke-virtual {v1, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V

    .line 2
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/a$a;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/a;->g(Lcom/clj/fastble/bluetooth/a;)Lg0/g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/a$a;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/a;->g(Lcom/clj/fastble/bluetooth/a;)Lg0/g;

    move-result-object p1

    invoke-virtual {p1}, Lg0/a;->a()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x52

    .line 5
    iput v1, v0, Landroid/os/Message;->what:I

    .line 6
    iget-object v1, p0, Lcom/clj/fastble/bluetooth/a$a;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {v1}, Lcom/clj/fastble/bluetooth/a;->g(Lcom/clj/fastble/bluetooth/a;)Lg0/g;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "rssi_status"

    .line 8
    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "rssi_value"

    .line 9
    invoke-virtual {v1, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothGattCallback\uff1aonServicesDiscovered \nstatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "currentThread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/clj/fastble/utils/a;->c(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a$a;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {v0, p1}, Lcom/clj/fastble/bluetooth/a;->s(Lcom/clj/fastble/bluetooth/a;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    if-nez p2, :cond_0

    .line 6
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/a$a;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/a;->m(Lcom/clj/fastble/bluetooth/a;)Lcom/clj/fastble/bluetooth/a$c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x6

    .line 7
    iput v0, p1, Landroid/os/Message;->what:I

    .line 8
    new-instance v0, Lcom/clj/fastble/data/a;

    invoke-direct {v0, p2}, Lcom/clj/fastble/data/a;-><init>(I)V

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    iget-object p2, p0, Lcom/clj/fastble/bluetooth/a$a;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p2}, Lcom/clj/fastble/bluetooth/a;->m(Lcom/clj/fastble/bluetooth/a;)Lcom/clj/fastble/bluetooth/a$c;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/a$a;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/a;->m(Lcom/clj/fastble/bluetooth/a;)Lcom/clj/fastble/bluetooth/a$c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x5

    .line 11
    iput p2, p1, Landroid/os/Message;->what:I

    .line 12
    iget-object p2, p0, Lcom/clj/fastble/bluetooth/a$a;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p2}, Lcom/clj/fastble/bluetooth/a;->m(Lcom/clj/fastble/bluetooth/a;)Lcom/clj/fastble/bluetooth/a$c;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method
