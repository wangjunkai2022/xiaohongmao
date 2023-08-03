.class Lcom/alipay/apmobilesecuritysdk/face/c$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/apmobilesecuritysdk/face/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/alipay/apmobilesecuritysdk/face/c$a;

.field final synthetic f:Lcom/alipay/apmobilesecuritysdk/face/c;


# direct methods
.method public constructor <init>(Lcom/alipay/apmobilesecuritysdk/face/c;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/apmobilesecuritysdk/face/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/face/c$b;->f:Lcom/alipay/apmobilesecuritysdk/face/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/alipay/apmobilesecuritysdk/face/c$b;->a:I

    iput-object p5, p0, Lcom/alipay/apmobilesecuritysdk/face/c$b;->d:Ljava/lang/String;

    invoke-static {p3}, Lt/a;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/face/c;->d(Lcom/alipay/apmobilesecuritysdk/face/c;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lg/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/face/c$b;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/alipay/apmobilesecuritysdk/face/c$b;->b:Ljava/lang/String;

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Utdid = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/alipay/apmobilesecuritysdk/face/c$b;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lt/b;->b(Ljava/lang/String;)V

    iput-object p4, p0, Lcom/alipay/apmobilesecuritysdk/face/c$b;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/apmobilesecuritysdk/face/c$b;->e:Lcom/alipay/apmobilesecuritysdk/face/c$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/c$b;->f:Lcom/alipay/apmobilesecuritysdk/face/c;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/face/c;->e(Lcom/alipay/apmobilesecuritysdk/face/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/c$b;->f:Lcom/alipay/apmobilesecuritysdk/face/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/apmobilesecuritysdk/face/c;->b(Lcom/alipay/apmobilesecuritysdk/face/c;Z)Z

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/c$b;->f:Lcom/alipay/apmobilesecuritysdk/face/c;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/face/c;->d(Lcom/alipay/apmobilesecuritysdk/face/c;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lg/a;->a(Landroid/content/Context;)Lg/a;

    invoke-static {}, Lg/a;->c()Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "tid"

    iget-object v3, p0, Lcom/alipay/apmobilesecuritysdk/face/c$b;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "utdid"

    iget-object v3, p0, Lcom/alipay/apmobilesecuritysdk/face/c$b;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "umid"

    iget-object v3, p0, Lcom/alipay/apmobilesecuritysdk/face/c$b;->f:Lcom/alipay/apmobilesecuritysdk/face/c;

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/face/c;->d(Lcom/alipay/apmobilesecuritysdk/face/c;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lg/a;->a(Landroid/content/Context;)Lg/a;

    invoke-static {}, Lg/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "userId"

    iget-object v3, p0, Lcom/alipay/apmobilesecuritysdk/face/c$b;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/face/c$b;->f:Lcom/alipay/apmobilesecuritysdk/face/c;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/face/c;->d(Lcom/alipay/apmobilesecuritysdk/face/c;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/apmobilesecuritysdk/face/e;->a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/c$b;->e:Lcom/alipay/apmobilesecuritysdk/face/c$a;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/face/c$c;

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/face/c$b;->f:Lcom/alipay/apmobilesecuritysdk/face/c;

    invoke-direct {v1, v2}, Lcom/alipay/apmobilesecuritysdk/face/c$c;-><init>(Lcom/alipay/apmobilesecuritysdk/face/c;)V

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/face/c$b;->f:Lcom/alipay/apmobilesecuritysdk/face/c;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/face/c;->d(Lcom/alipay/apmobilesecuritysdk/face/c;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/a/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/apmobilesecuritysdk/face/c$c;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/face/c$b;->f:Lcom/alipay/apmobilesecuritysdk/face/c;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/face/c;->d(Lcom/alipay/apmobilesecuritysdk/face/c;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/apmobilesecuritysdk/face/c$c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/face/c$b;->f:Lcom/alipay/apmobilesecuritysdk/face/c;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/face/c;->d(Lcom/alipay/apmobilesecuritysdk/face/c;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lg/a;->a(Landroid/content/Context;)Lg/a;

    invoke-static {}, Lg/a;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/apmobilesecuritysdk/face/c$c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/face/c$b;->f:Lcom/alipay/apmobilesecuritysdk/face/c;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/face/c;->d(Lcom/alipay/apmobilesecuritysdk/face/c;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Li/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/apmobilesecuritysdk/face/c$c;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[*]result.apdid     = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/alipay/apmobilesecuritysdk/face/c$c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lt/b;->b(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[*]result.token     = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/alipay/apmobilesecuritysdk/face/c$c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lt/b;->b(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[*]result.umid      = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/alipay/apmobilesecuritysdk/face/c$c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lt/b;->b(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[*]result.clientKey = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/alipay/apmobilesecuritysdk/face/c$c;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lt/b;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/face/c$b;->e:Lcom/alipay/apmobilesecuritysdk/face/c$a;

    invoke-interface {v2, v1}, Lcom/alipay/apmobilesecuritysdk/face/c$a;->a(Lcom/alipay/apmobilesecuritysdk/face/c$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/c$b;->f:Lcom/alipay/apmobilesecuritysdk/face/c;

    invoke-static {v1, v0}, Lcom/alipay/apmobilesecuritysdk/face/c;->b(Lcom/alipay/apmobilesecuritysdk/face/c;Z)Z

    return-void
.end method
