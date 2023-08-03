.class Lcom/clj/fastble/scan/c$a;
.super Lcom/clj/fastble/scan/a;
.source "BleScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clj/fastble/scan/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic l:Lcom/clj/fastble/scan/c;


# direct methods
.method constructor <init>(Lcom/clj/fastble/scan/c;)V
    .locals 0

    iput-object p1, p0, Lcom/clj/fastble/scan/c$a;->l:Lcom/clj/fastble/scan/c;

    invoke-direct {p0}, Lcom/clj/fastble/scan/a;-><init>()V

    return-void
.end method


# virtual methods
.method public j(Lcom/clj/fastble/data/BleDevice;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/clj/fastble/scan/c$a;->l:Lcom/clj/fastble/scan/c;

    invoke-static {v0}, Lcom/clj/fastble/scan/c;->a(Lcom/clj/fastble/scan/c;)Lcom/clj/fastble/scan/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/scan/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/clj/fastble/scan/c$a;->l:Lcom/clj/fastble/scan/c;

    .line 3
    invoke-static {v0}, Lcom/clj/fastble/scan/c;->a(Lcom/clj/fastble/scan/c;)Lcom/clj/fastble/scan/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/scan/a;->e()Lg0/j;

    move-result-object v0

    check-cast v0, Lg0/h;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lg0/h;->g(Lcom/clj/fastble/data/BleDevice;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/clj/fastble/scan/c$a;->l:Lcom/clj/fastble/scan/c;

    invoke-static {v0}, Lcom/clj/fastble/scan/c;->a(Lcom/clj/fastble/scan/c;)Lcom/clj/fastble/scan/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/scan/a;->e()Lg0/j;

    move-result-object v0

    check-cast v0, Lg0/i;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Lg0/i;->c(Lcom/clj/fastble/data/BleDevice;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public k(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/clj/fastble/data/BleDevice;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/clj/fastble/scan/c$a;->l:Lcom/clj/fastble/scan/c;

    invoke-static {v0}, Lcom/clj/fastble/scan/c;->a(Lcom/clj/fastble/scan/c;)Lcom/clj/fastble/scan/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/scan/a;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/clj/fastble/scan/c$a;->l:Lcom/clj/fastble/scan/c;

    .line 3
    invoke-static {v0}, Lcom/clj/fastble/scan/c;->a(Lcom/clj/fastble/scan/c;)Lcom/clj/fastble/scan/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/scan/a;->e()Lg0/j;

    move-result-object v0

    check-cast v0, Lg0/h;

    if-eqz p1, :cond_2

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v0, v1}, Lg0/h;->h(Lcom/clj/fastble/data/BleDevice;)V

    .line 6
    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/clj/fastble/scan/c$a$a;

    invoke-direct {v2, p0, p1, v0}, Lcom/clj/fastble/scan/c$a$a;-><init>(Lcom/clj/fastble/scan/c$a;Ljava/util/List;Lg0/h;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    const/4 p1, 0x0

    .line 7
    invoke-virtual {v0, p1}, Lg0/h;->h(Lcom/clj/fastble/data/BleDevice;)V

    goto :goto_1

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/clj/fastble/scan/c$a;->l:Lcom/clj/fastble/scan/c;

    invoke-static {v0}, Lcom/clj/fastble/scan/c;->a(Lcom/clj/fastble/scan/c;)Lcom/clj/fastble/scan/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/scan/a;->e()Lg0/j;

    move-result-object v0

    check-cast v0, Lg0/i;

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {v0, p1}, Lg0/i;->d(Ljava/util/List;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public l(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/clj/fastble/scan/c$a;->l:Lcom/clj/fastble/scan/c;

    invoke-static {v0}, Lcom/clj/fastble/scan/c;->a(Lcom/clj/fastble/scan/c;)Lcom/clj/fastble/scan/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/scan/a;->e()Lg0/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lg0/j;->a(Z)V

    :cond_0
    return-void
.end method

.method public m(Lcom/clj/fastble/data/BleDevice;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/clj/fastble/scan/c$a;->l:Lcom/clj/fastble/scan/c;

    invoke-static {v0}, Lcom/clj/fastble/scan/c;->a(Lcom/clj/fastble/scan/c;)Lcom/clj/fastble/scan/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/scan/a;->e()Lg0/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lg0/j;->b(Lcom/clj/fastble/data/BleDevice;)V

    :cond_0
    return-void
.end method
