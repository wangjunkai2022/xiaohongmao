.class final Lcom/alipay/apmobilesecuritysdk/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/apmobilesecuritysdk/b/b;


# direct methods
.method constructor <init>(Lcom/alipay/apmobilesecuritysdk/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/b/c;->a:Lcom/alipay/apmobilesecuritysdk/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/b/c;->a:Lcom/alipay/apmobilesecuritysdk/b/b;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/b/b;->d(Lcom/alipay/apmobilesecuritysdk/b/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lt/d;->c(Ljava/lang/Throwable;)V

    return-void
.end method
