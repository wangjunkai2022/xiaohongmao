.class Lcom/clj/fastble/bluetooth/b$a;
.super Landroid/os/Handler;
.source "BleConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clj/fastble/bluetooth/b;-><init>(Lcom/clj/fastble/bluetooth/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/clj/fastble/bluetooth/b;


# direct methods
.method constructor <init>(Lcom/clj/fastble/bluetooth/b;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/clj/fastble/bluetooth/b$a;->a:Lcom/clj/fastble/bluetooth/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x31

    if-eq v0, v1, :cond_d

    const/16 v1, 0x32

    if-eq v0, v1, :cond_b

    const/16 v1, 0x41

    if-eq v0, v1, :cond_a

    const/16 v1, 0x42

    if-eq v0, v1, :cond_8

    const/16 v1, 0x51

    if-eq v0, v1, :cond_7

    const/16 v1, 0x52

    if-eq v0, v1, :cond_5

    const/16 v1, 0x61

    if-eq v0, v1, :cond_4

    const/16 v1, 0x62

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 3
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lg0/c;

    .line 4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "indicate_value"

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz v0, :cond_e

    .line 6
    invoke-virtual {v0, p1}, Lg0/c;->e([B)V

    goto/16 :goto_0

    .line 7
    :pswitch_1
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b$a;->a:Lcom/clj/fastble/bluetooth/b;

    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/b;->l()V

    .line 8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lg0/c;

    .line 9
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "indicate_status"

    .line 10
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz v0, :cond_e

    if-nez p1, :cond_0

    .line 11
    invoke-virtual {v0}, Lg0/c;->g()V

    goto/16 :goto_0

    .line 12
    :cond_0
    new-instance v1, Lcom/clj/fastble/exception/GattException;

    invoke-direct {v1, p1}, Lcom/clj/fastble/exception/GattException;-><init>(I)V

    invoke-virtual {v0, v1}, Lg0/c;->f(Lcom/clj/fastble/exception/BleException;)V

    goto/16 :goto_0

    .line 13
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lg0/c;

    if-eqz p1, :cond_e

    .line 14
    new-instance v0, Lcom/clj/fastble/exception/TimeoutException;

    invoke-direct {v0}, Lcom/clj/fastble/exception/TimeoutException;-><init>()V

    invoke-virtual {p1, v0}, Lg0/c;->f(Lcom/clj/fastble/exception/BleException;)V

    goto/16 :goto_0

    .line 15
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lg0/e;

    .line 16
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "notify_value"

    .line 17
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz v0, :cond_e

    .line 18
    invoke-virtual {v0, p1}, Lg0/e;->e([B)V

    goto/16 :goto_0

    .line 19
    :pswitch_4
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b$a;->a:Lcom/clj/fastble/bluetooth/b;

    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/b;->n()V

    .line 20
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lg0/e;

    .line 21
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "notify_status"

    .line 22
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz v0, :cond_e

    if-nez p1, :cond_1

    .line 23
    invoke-virtual {v0}, Lg0/e;->g()V

    goto/16 :goto_0

    .line 24
    :cond_1
    new-instance v1, Lcom/clj/fastble/exception/GattException;

    invoke-direct {v1, p1}, Lcom/clj/fastble/exception/GattException;-><init>(I)V

    invoke-virtual {v0, v1}, Lg0/e;->f(Lcom/clj/fastble/exception/BleException;)V

    goto/16 :goto_0

    .line 25
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lg0/e;

    if-eqz p1, :cond_e

    .line 26
    new-instance v0, Lcom/clj/fastble/exception/TimeoutException;

    invoke-direct {v0}, Lcom/clj/fastble/exception/TimeoutException;-><init>()V

    invoke-virtual {p1, v0}, Lg0/e;->f(Lcom/clj/fastble/exception/BleException;)V

    goto/16 :goto_0

    .line 27
    :cond_2
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b$a;->a:Lcom/clj/fastble/bluetooth/b;

    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/b;->m()V

    .line 28
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lg0/d;

    .line 29
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "mtu_status"

    .line 30
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "mtu_value"

    .line 31
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz v0, :cond_e

    if-nez v1, :cond_3

    .line 32
    invoke-virtual {v0, p1}, Lg0/d;->e(I)V

    goto/16 :goto_0

    .line 33
    :cond_3
    new-instance p1, Lcom/clj/fastble/exception/GattException;

    invoke-direct {p1, v1}, Lcom/clj/fastble/exception/GattException;-><init>(I)V

    invoke-virtual {v0, p1}, Lg0/d;->f(Lcom/clj/fastble/exception/BleException;)V

    goto/16 :goto_0

    .line 34
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lg0/d;

    if-eqz p1, :cond_e

    .line 35
    new-instance v0, Lcom/clj/fastble/exception/TimeoutException;

    invoke-direct {v0}, Lcom/clj/fastble/exception/TimeoutException;-><init>()V

    invoke-virtual {p1, v0}, Lg0/d;->f(Lcom/clj/fastble/exception/BleException;)V

    goto/16 :goto_0

    .line 36
    :cond_5
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b$a;->a:Lcom/clj/fastble/bluetooth/b;

    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/b;->r()V

    .line 37
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lg0/g;

    .line 38
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "rssi_status"

    .line 39
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "rssi_value"

    .line 40
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz v0, :cond_e

    if-nez v1, :cond_6

    .line 41
    invoke-virtual {v0, p1}, Lg0/g;->f(I)V

    goto/16 :goto_0

    .line 42
    :cond_6
    new-instance p1, Lcom/clj/fastble/exception/GattException;

    invoke-direct {p1, v1}, Lcom/clj/fastble/exception/GattException;-><init>(I)V

    invoke-virtual {v0, p1}, Lg0/g;->e(Lcom/clj/fastble/exception/BleException;)V

    goto/16 :goto_0

    .line 43
    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lg0/g;

    if-eqz p1, :cond_e

    .line 44
    new-instance v0, Lcom/clj/fastble/exception/TimeoutException;

    invoke-direct {v0}, Lcom/clj/fastble/exception/TimeoutException;-><init>()V

    invoke-virtual {p1, v0}, Lg0/g;->e(Lcom/clj/fastble/exception/BleException;)V

    goto/16 :goto_0

    .line 45
    :cond_8
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b$a;->a:Lcom/clj/fastble/bluetooth/b;

    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/b;->p()V

    .line 46
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lg0/f;

    .line 47
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "read_status"

    .line 48
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "read_value"

    .line 49
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz v0, :cond_e

    if-nez v1, :cond_9

    .line 50
    invoke-virtual {v0, p1}, Lg0/f;->f([B)V

    goto :goto_0

    .line 51
    :cond_9
    new-instance p1, Lcom/clj/fastble/exception/GattException;

    invoke-direct {p1, v1}, Lcom/clj/fastble/exception/GattException;-><init>(I)V

    invoke-virtual {v0, p1}, Lg0/f;->e(Lcom/clj/fastble/exception/BleException;)V

    goto :goto_0

    .line 52
    :cond_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lg0/f;

    if-eqz p1, :cond_e

    .line 53
    new-instance v0, Lcom/clj/fastble/exception/TimeoutException;

    invoke-direct {v0}, Lcom/clj/fastble/exception/TimeoutException;-><init>()V

    invoke-virtual {p1, v0}, Lg0/f;->e(Lcom/clj/fastble/exception/BleException;)V

    goto :goto_0

    .line 54
    :cond_b
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b$a;->a:Lcom/clj/fastble/bluetooth/b;

    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/b;->y()V

    .line 55
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lg0/k;

    .line 56
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "write_status"

    .line 57
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "write_value"

    .line 58
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz v0, :cond_e

    if-nez v1, :cond_c

    const/4 v1, 0x1

    .line 59
    invoke-virtual {v0, v1, v1, p1}, Lg0/k;->f(II[B)V

    goto :goto_0

    .line 60
    :cond_c
    new-instance p1, Lcom/clj/fastble/exception/GattException;

    invoke-direct {p1, v1}, Lcom/clj/fastble/exception/GattException;-><init>(I)V

    invoke-virtual {v0, p1}, Lg0/k;->e(Lcom/clj/fastble/exception/BleException;)V

    goto :goto_0

    .line 61
    :cond_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lg0/k;

    if-eqz p1, :cond_e

    .line 62
    new-instance v0, Lcom/clj/fastble/exception/TimeoutException;

    invoke-direct {v0}, Lcom/clj/fastble/exception/TimeoutException;-><init>()V

    invoke-virtual {p1, v0}, Lg0/k;->e(Lcom/clj/fastble/exception/BleException;)V

    :cond_e
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
