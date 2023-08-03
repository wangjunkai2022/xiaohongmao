.class Lcom/clj/fastble/bluetooth/d$b;
.super Lg0/k;
.source "SplitWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clj/fastble/bluetooth/d;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/clj/fastble/bluetooth/d;


# direct methods
.method constructor <init>(Lcom/clj/fastble/bluetooth/d;)V
    .locals 0

    iput-object p1, p0, Lcom/clj/fastble/bluetooth/d$b;->c:Lcom/clj/fastble/bluetooth/d;

    invoke-direct {p0}, Lg0/k;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lcom/clj/fastble/exception/BleException;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/d$b;->c:Lcom/clj/fastble/bluetooth/d;

    invoke-static {v0}, Lcom/clj/fastble/bluetooth/d;->d(Lcom/clj/fastble/bluetooth/d;)Lg0/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/d$b;->c:Lcom/clj/fastble/bluetooth/d;

    invoke-static {v0}, Lcom/clj/fastble/bluetooth/d;->d(Lcom/clj/fastble/bluetooth/d;)Lg0/k;

    move-result-object v0

    new-instance v1, Lcom/clj/fastble/exception/OtherException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception occur while writing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/clj/fastble/exception/BleException;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lg0/k;->e(Lcom/clj/fastble/exception/BleException;)V

    :cond_0
    return-void
.end method

.method public f(II[B)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/d$b;->c:Lcom/clj/fastble/bluetooth/d;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/d;->b(Lcom/clj/fastble/bluetooth/d;)I

    move-result p1

    iget-object p2, p0, Lcom/clj/fastble/bluetooth/d$b;->c:Lcom/clj/fastble/bluetooth/d;

    invoke-static {p2}, Lcom/clj/fastble/bluetooth/d;->c(Lcom/clj/fastble/bluetooth/d;)Ljava/util/Queue;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Queue;->size()I

    move-result p2

    sub-int/2addr p1, p2

    .line 2
    iget-object p2, p0, Lcom/clj/fastble/bluetooth/d$b;->c:Lcom/clj/fastble/bluetooth/d;

    invoke-static {p2}, Lcom/clj/fastble/bluetooth/d;->d(Lcom/clj/fastble/bluetooth/d;)Lg0/k;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/clj/fastble/bluetooth/d$b;->c:Lcom/clj/fastble/bluetooth/d;

    invoke-static {p2}, Lcom/clj/fastble/bluetooth/d;->d(Lcom/clj/fastble/bluetooth/d;)Lg0/k;

    move-result-object p2

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/d$b;->c:Lcom/clj/fastble/bluetooth/d;

    invoke-static {v0}, Lcom/clj/fastble/bluetooth/d;->b(Lcom/clj/fastble/bluetooth/d;)I

    move-result v0

    invoke-virtual {p2, p1, v0, p3}, Lg0/k;->f(II[B)V

    .line 4
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    if-ne p1, p2, :cond_1

    .line 5
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/d$b;->c:Lcom/clj/fastble/bluetooth/d;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/d;->a(Lcom/clj/fastble/bluetooth/d;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/d$b;->c:Lcom/clj/fastble/bluetooth/d;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/d;->e(Lcom/clj/fastble/bluetooth/d;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x33

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/clj/fastble/bluetooth/d$b;->c:Lcom/clj/fastble/bluetooth/d;

    invoke-static {p2}, Lcom/clj/fastble/bluetooth/d;->e(Lcom/clj/fastble/bluetooth/d;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method
