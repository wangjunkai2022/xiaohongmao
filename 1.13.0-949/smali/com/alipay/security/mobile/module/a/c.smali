.class final Lcom/alipay/security/mobile/module/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;

.field final synthetic b:Lcom/alipay/security/mobile/module/a/b;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/module/a/b;Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/module/a/c;->b:Lcom/alipay/security/mobile/module/a/b;

    iput-object p2, p0, Lcom/alipay/security/mobile/module/a/c;->a:Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/module/a/c;->b:Lcom/alipay/security/mobile/module/a/b;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/b;->d(Lcom/alipay/security/mobile/module/a/b;)La0/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/security/mobile/module/a/c;->a:Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;

    invoke-interface {v0, v1}, La0/b;->b(Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/b;->g(Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    const-string v0, "Rpc success."

    invoke-static {v0}, Lt/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    invoke-direct {v1}, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;-><init>()V

    invoke-static {v1}, Lcom/alipay/security/mobile/module/a/b;->g(Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    invoke-static {}, Lcom/alipay/security/mobile/module/a/b;->f()Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/BaseResult;->success:Z

    invoke-static {}, Lcom/alipay/security/mobile/module/a/b;->f()Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "static data rpc upload error, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lt/d;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/BaseResult;->resultCode:Ljava/lang/String;

    const-string v1, "Rpc failed."

    invoke-static {v1}, Lt/b;->b(Ljava/lang/String;)V

    invoke-static {v0}, Lt/d;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt/b;->b(Ljava/lang/String;)V

    return-void
.end method
