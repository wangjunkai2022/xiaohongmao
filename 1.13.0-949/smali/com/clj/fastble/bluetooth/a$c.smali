.class final Lcom/clj/fastble/bluetooth/a$c;
.super Landroid/os/Handler;
.source "BleBluetooth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clj/fastble/bluetooth/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/clj/fastble/bluetooth/a;


# direct methods
.method constructor <init>(Lcom/clj/fastble/bluetooth/a;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 3
    :pswitch_0
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/a;->a(Lcom/clj/fastble/bluetooth/a;)V

    .line 4
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/a;->b(Lcom/clj/fastble/bluetooth/a;)V

    .line 5
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/a;->i(Lcom/clj/fastble/bluetooth/a;)V

    .line 6
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    sget-object v0, Lcom/clj/fastble/bluetooth/a$b;->d:Lcom/clj/fastble/bluetooth/a$b;

    invoke-static {p1, v0}, Lcom/clj/fastble/bluetooth/a;->o(Lcom/clj/fastble/bluetooth/a;Lcom/clj/fastble/bluetooth/a$b;)Lcom/clj/fastble/bluetooth/a$b;

    .line 7
    invoke-static {}, Lcom/clj/fastble/a;->w()Lcom/clj/fastble/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/clj/fastble/a;->y()Lcom/clj/fastble/bluetooth/c;

    move-result-object p1

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-virtual {p1, v0}, Lcom/clj/fastble/bluetooth/c;->m(Lcom/clj/fastble/bluetooth/a;)V

    .line 8
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/a;->p(Lcom/clj/fastble/bluetooth/a;)Lg0/b;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/a;->p(Lcom/clj/fastble/bluetooth/a;)Lg0/b;

    move-result-object p1

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {v0}, Lcom/clj/fastble/bluetooth/a;->q(Lcom/clj/fastble/bluetooth/a;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    new-instance v1, Lcom/clj/fastble/exception/TimeoutException;

    invoke-direct {v1}, Lcom/clj/fastble/exception/TimeoutException;-><init>()V

    invoke-virtual {p1, v0, v1}, Lg0/b;->c(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/exception/BleException;)V

    goto/16 :goto_0

    .line 10
    :pswitch_1
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    sget-object v2, Lcom/clj/fastble/bluetooth/a$b;->c:Lcom/clj/fastble/bluetooth/a$b;

    invoke-static {v0, v2}, Lcom/clj/fastble/bluetooth/a;->o(Lcom/clj/fastble/bluetooth/a;Lcom/clj/fastble/bluetooth/a$b;)Lcom/clj/fastble/bluetooth/a$b;

    .line 11
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {v0, v1}, Lcom/clj/fastble/bluetooth/a;->u(Lcom/clj/fastble/bluetooth/a;Z)Z

    .line 12
    invoke-static {}, Lcom/clj/fastble/a;->w()Lcom/clj/fastble/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/a;->y()Lcom/clj/fastble/bluetooth/c;

    move-result-object v0

    iget-object v1, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-virtual {v0, v1}, Lcom/clj/fastble/bluetooth/c;->m(Lcom/clj/fastble/bluetooth/a;)V

    .line 13
    invoke-static {}, Lcom/clj/fastble/a;->w()Lcom/clj/fastble/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/a;->y()Lcom/clj/fastble/bluetooth/c;

    move-result-object v0

    iget-object v1, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-virtual {v0, v1}, Lcom/clj/fastble/bluetooth/c;->a(Lcom/clj/fastble/bluetooth/a;)V

    .line 14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/clj/fastble/data/a;

    .line 15
    invoke-virtual {p1}, Lcom/clj/fastble/data/a;->a()I

    move-result p1

    .line 16
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {v0}, Lcom/clj/fastble/bluetooth/a;->p(Lcom/clj/fastble/bluetooth/a;)Lg0/b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 17
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {v0}, Lcom/clj/fastble/bluetooth/a;->p(Lcom/clj/fastble/bluetooth/a;)Lg0/b;

    move-result-object v0

    iget-object v1, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {v1}, Lcom/clj/fastble/bluetooth/a;->q(Lcom/clj/fastble/bluetooth/a;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {v2}, Lcom/clj/fastble/bluetooth/a;->r(Lcom/clj/fastble/bluetooth/a;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lg0/b;->d(Lcom/clj/fastble/data/BleDevice;Landroid/bluetooth/BluetoothGatt;I)V

    goto/16 :goto_0

    .line 18
    :pswitch_2
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/a;->a(Lcom/clj/fastble/bluetooth/a;)V

    .line 19
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/a;->b(Lcom/clj/fastble/bluetooth/a;)V

    .line 20
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/a;->i(Lcom/clj/fastble/bluetooth/a;)V

    .line 21
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    sget-object v0, Lcom/clj/fastble/bluetooth/a$b;->d:Lcom/clj/fastble/bluetooth/a$b;

    invoke-static {p1, v0}, Lcom/clj/fastble/bluetooth/a;->o(Lcom/clj/fastble/bluetooth/a;Lcom/clj/fastble/bluetooth/a$b;)Lcom/clj/fastble/bluetooth/a$b;

    .line 22
    invoke-static {}, Lcom/clj/fastble/a;->w()Lcom/clj/fastble/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/clj/fastble/a;->y()Lcom/clj/fastble/bluetooth/c;

    move-result-object p1

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-virtual {p1, v0}, Lcom/clj/fastble/bluetooth/c;->m(Lcom/clj/fastble/bluetooth/a;)V

    .line 23
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/a;->p(Lcom/clj/fastble/bluetooth/a;)Lg0/b;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 24
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/a;->p(Lcom/clj/fastble/bluetooth/a;)Lg0/b;

    move-result-object p1

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {v0}, Lcom/clj/fastble/bluetooth/a;->q(Lcom/clj/fastble/bluetooth/a;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    new-instance v1, Lcom/clj/fastble/exception/OtherException;

    const-string v2, "GATT discover services exception occurred!"

    invoke-direct {v1, v2}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lg0/b;->c(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/exception/BleException;)V

    goto/16 :goto_0

    .line 25
    :pswitch_3
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p1, v1}, Lcom/clj/fastble/bluetooth/a;->k(Lcom/clj/fastble/bluetooth/a;I)I

    .line 26
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/a;->r(Lcom/clj/fastble/bluetooth/a;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    const/4 v0, 0x5

    if-eqz p1, :cond_0

    .line 27
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/a;->r(Lcom/clj/fastble/bluetooth/a;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result p1

    if-nez p1, :cond_2

    .line 28
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/a;->m(Lcom/clj/fastble/bluetooth/a;)Lcom/clj/fastble/bluetooth/a$c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 29
    iput v0, p1, Landroid/os/Message;->what:I

    .line 30
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {v0}, Lcom/clj/fastble/bluetooth/a;->m(Lcom/clj/fastble/bluetooth/a;)Lcom/clj/fastble/bluetooth/a$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/a;->m(Lcom/clj/fastble/bluetooth/a;)Lcom/clj/fastble/bluetooth/a$c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 32
    iput v0, p1, Landroid/os/Message;->what:I

    .line 33
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {v0}, Lcom/clj/fastble/bluetooth/a;->m(Lcom/clj/fastble/bluetooth/a;)Lcom/clj/fastble/bluetooth/a$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 34
    :pswitch_4
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/a;->q(Lcom/clj/fastble/bluetooth/a;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    iget-object v2, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {v2}, Lcom/clj/fastble/bluetooth/a;->p(Lcom/clj/fastble/bluetooth/a;)Lg0/b;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/clj/fastble/bluetooth/a;->E(Lcom/clj/fastble/data/BleDevice;ZLg0/b;)Landroid/bluetooth/BluetoothGatt;

    goto/16 :goto_0

    .line 35
    :pswitch_5
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    sget-object v1, Lcom/clj/fastble/bluetooth/a$b;->e:Lcom/clj/fastble/bluetooth/a$b;

    invoke-static {v0, v1}, Lcom/clj/fastble/bluetooth/a;->o(Lcom/clj/fastble/bluetooth/a;Lcom/clj/fastble/bluetooth/a$b;)Lcom/clj/fastble/bluetooth/a$b;

    .line 36
    invoke-static {}, Lcom/clj/fastble/a;->w()Lcom/clj/fastble/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/a;->y()Lcom/clj/fastble/bluetooth/c;

    move-result-object v0

    iget-object v1, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-virtual {v0, v1}, Lcom/clj/fastble/bluetooth/c;->l(Lcom/clj/fastble/bluetooth/a;)V

    .line 37
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {v0}, Lcom/clj/fastble/bluetooth/a;->b(Lcom/clj/fastble/bluetooth/a;)V

    .line 38
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {v0}, Lcom/clj/fastble/bluetooth/a;->i(Lcom/clj/fastble/bluetooth/a;)V

    .line 39
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/a;->S()V

    .line 40
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/a;->P()V

    .line 41
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/a;->C()V

    .line 42
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {v0}, Lcom/clj/fastble/bluetooth/a;->m(Lcom/clj/fastble/bluetooth/a;)Lcom/clj/fastble/bluetooth/a$c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 43
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/clj/fastble/data/a;

    .line 44
    invoke-virtual {p1}, Lcom/clj/fastble/data/a;->b()Z

    move-result v0

    .line 45
    invoke-virtual {p1}, Lcom/clj/fastble/data/a;->a()I

    move-result p1

    .line 46
    iget-object v1, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {v1}, Lcom/clj/fastble/bluetooth/a;->p(Lcom/clj/fastble/bluetooth/a;)Lg0/b;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 47
    iget-object v1, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {v1}, Lcom/clj/fastble/bluetooth/a;->p(Lcom/clj/fastble/bluetooth/a;)Lg0/b;

    move-result-object v1

    iget-object v2, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {v2}, Lcom/clj/fastble/bluetooth/a;->q(Lcom/clj/fastble/bluetooth/a;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v2

    iget-object v3, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {v3}, Lcom/clj/fastble/bluetooth/a;->r(Lcom/clj/fastble/bluetooth/a;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3, p1}, Lg0/b;->e(ZLcom/clj/fastble/data/BleDevice;Landroid/bluetooth/BluetoothGatt;I)V

    goto/16 :goto_0

    .line 48
    :pswitch_6
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {v0}, Lcom/clj/fastble/bluetooth/a;->a(Lcom/clj/fastble/bluetooth/a;)V

    .line 49
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {v0}, Lcom/clj/fastble/bluetooth/a;->b(Lcom/clj/fastble/bluetooth/a;)V

    .line 50
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {v0}, Lcom/clj/fastble/bluetooth/a;->i(Lcom/clj/fastble/bluetooth/a;)V

    .line 51
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {v0}, Lcom/clj/fastble/bluetooth/a;->j(Lcom/clj/fastble/bluetooth/a;)I

    move-result v0

    invoke-static {}, Lcom/clj/fastble/a;->w()Lcom/clj/fastble/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/clj/fastble/a;->A()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Connect fail, try reconnect "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/clj/fastble/a;->w()Lcom/clj/fastble/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/a;->B()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " Millisecond later"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/clj/fastble/utils/a;->b(Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/a;->l(Lcom/clj/fastble/bluetooth/a;)I

    .line 54
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/a;->m(Lcom/clj/fastble/bluetooth/a;)Lcom/clj/fastble/bluetooth/a$c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x3

    .line 55
    iput v0, p1, Landroid/os/Message;->what:I

    .line 56
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {v0}, Lcom/clj/fastble/bluetooth/a;->m(Lcom/clj/fastble/bluetooth/a;)Lcom/clj/fastble/bluetooth/a$c;

    move-result-object v0

    invoke-static {}, Lcom/clj/fastble/a;->w()Lcom/clj/fastble/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clj/fastble/a;->B()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {v0, v1}, Lcom/clj/fastble/bluetooth/a;->k(Lcom/clj/fastble/bluetooth/a;I)I

    .line 58
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    sget-object v1, Lcom/clj/fastble/bluetooth/a$b;->d:Lcom/clj/fastble/bluetooth/a$b;

    invoke-static {v0, v1}, Lcom/clj/fastble/bluetooth/a;->o(Lcom/clj/fastble/bluetooth/a;Lcom/clj/fastble/bluetooth/a$b;)Lcom/clj/fastble/bluetooth/a$b;

    .line 59
    invoke-static {}, Lcom/clj/fastble/a;->w()Lcom/clj/fastble/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/a;->y()Lcom/clj/fastble/bluetooth/c;

    move-result-object v0

    iget-object v1, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-virtual {v0, v1}, Lcom/clj/fastble/bluetooth/c;->m(Lcom/clj/fastble/bluetooth/a;)V

    .line 60
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/clj/fastble/data/a;

    .line 61
    invoke-virtual {p1}, Lcom/clj/fastble/data/a;->a()I

    move-result p1

    .line 62
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {v0}, Lcom/clj/fastble/bluetooth/a;->p(Lcom/clj/fastble/bluetooth/a;)Lg0/b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {v0}, Lcom/clj/fastble/bluetooth/a;->p(Lcom/clj/fastble/bluetooth/a;)Lg0/b;

    move-result-object v0

    iget-object v1, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {v1}, Lcom/clj/fastble/bluetooth/a;->q(Lcom/clj/fastble/bluetooth/a;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    new-instance v2, Lcom/clj/fastble/exception/ConnectException;

    iget-object v3, p0, Lcom/clj/fastble/bluetooth/a$c;->a:Lcom/clj/fastble/bluetooth/a;

    invoke-static {v3}, Lcom/clj/fastble/bluetooth/a;->r(Lcom/clj/fastble/bluetooth/a;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/clj/fastble/exception/ConnectException;-><init>(Landroid/bluetooth/BluetoothGatt;I)V

    invoke-virtual {v0, v1, v2}, Lg0/b;->c(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/exception/BleException;)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
