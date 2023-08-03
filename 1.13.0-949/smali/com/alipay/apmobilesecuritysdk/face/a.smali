.class Lcom/alipay/apmobilesecuritysdk/face/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/apmobilesecuritysdk/face/c;


# direct methods
.method constructor <init>(Lcom/alipay/apmobilesecuritysdk/face/c;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/face/a;->a:Lcom/alipay/apmobilesecuritysdk/face/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/a;->a:Lcom/alipay/apmobilesecuritysdk/face/c;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/face/c;->a(Lcom/alipay/apmobilesecuritysdk/face/c;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/a;->a:Lcom/alipay/apmobilesecuritysdk/face/c;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/face/c;->a(Lcom/alipay/apmobilesecuritysdk/face/c;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/apmobilesecuritysdk/face/c$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/face/c$b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_1
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/a;->a:Lcom/alipay/apmobilesecuritysdk/face/c;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/face/c;->c(Lcom/alipay/apmobilesecuritysdk/face/c;)Ljava/lang/Thread;

    return-void
.end method
