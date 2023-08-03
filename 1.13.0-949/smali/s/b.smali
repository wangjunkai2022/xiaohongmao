.class public final Ls/b;
.super Ljava/lang/Object;

# interfaces
.implements Ls/a;


# static fields
.field private static a:Ls/a;

.field private static b:Lcom/alipay/security/mobile/module/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Landroid/content/Context;)Ls/a;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Ls/b;->a:Ls/a;

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/alipay/security/mobile/module/a/b;->e(Landroid/content/Context;)Lcom/alipay/security/mobile/module/a/b;

    move-result-object p0

    sput-object p0, Ls/b;->b:Lcom/alipay/security/mobile/module/a/a;

    new-instance p0, Ls/b;

    invoke-direct {p0}, Ls/b;-><init>()V

    sput-object p0, Ls/b;->a:Ls/a;

    :cond_1
    sget-object p0, Ls/b;->a:Ls/a;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lr/a;
    .locals 1

    sget-object v0, Ls/b;->b:Lcom/alipay/security/mobile/module/a/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/AppListResult;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p2, Lr/a;

    iget-object p3, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/AppListResult;->appListData:Ljava/lang/String;

    iget-object p4, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/AppListResult;->appListVer:Ljava/lang/String;

    invoke-direct {p2, p3, p4}, Lr/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p3, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/BaseResult;->success:Z

    iput-boolean p3, p2, Lr/b;->a:Z

    iget-object p1, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/BaseResult;->resultCode:Ljava/lang/String;

    iput-object p1, p2, Lr/b;->b:Ljava/lang/String;

    return-object p2
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Ls/b;->b:Lcom/alipay/security/mobile/module/a/a;

    invoke-interface {v0, p1}, Lcom/alipay/security/mobile/module/a/a;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final c(Lr/d;)Lr/c;
    .locals 2

    new-instance v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;

    invoke-direct {v0}, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;-><init>()V

    invoke-virtual {p1}, Lr/d;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->os:Ljava/lang/String;

    invoke-virtual {p1}, Lr/d;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->apdid:Ljava/lang/String;

    invoke-virtual {p1}, Lr/d;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->pubApdid:Ljava/lang/String;

    invoke-virtual {p1}, Lr/d;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->priApdid:Ljava/lang/String;

    invoke-virtual {p1}, Lr/d;->j()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->token:Ljava/lang/String;

    invoke-virtual {p1}, Lr/d;->l()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->umidToken:Ljava/lang/String;

    invoke-virtual {p1}, Lr/d;->n()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->version:Ljava/lang/String;

    invoke-virtual {p1}, Lr/d;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->lastTime:Ljava/lang/String;

    invoke-virtual {p1}, Lr/d;->q()Ljava/util/Map;

    move-result-object p1

    iput-object p1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->dataMap:Ljava/util/Map;

    sget-object p1, Ls/b;->b:Lcom/alipay/security/mobile/module/a/a;

    invoke-interface {p1, v0}, Lcom/alipay/security/mobile/module/a/a;->c(Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    move-result-object p1

    new-instance v0, Lr/c;

    invoke-direct {v0}, Lr/c;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-boolean v1, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/BaseResult;->success:Z

    iput-boolean v1, v0, Lr/b;->a:Z

    iget-object v1, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/BaseResult;->resultCode:Ljava/lang/String;

    iput-object v1, v0, Lr/b;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->apdid:Ljava/lang/String;

    iput-object v1, v0, Lr/c;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->token:Ljava/lang/String;

    iput-object v1, v0, Lr/c;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->currentTime:Ljava/lang/String;

    iput-object v1, v0, Lr/c;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->version:Ljava/lang/String;

    iput-object v1, v0, Lr/c;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->vkeySwitch:Ljava/lang/String;

    iput-object v1, v0, Lr/c;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->bugTrackSwitch:Ljava/lang/String;

    iput-object v1, v0, Lr/c;->h:Ljava/lang/String;

    iget-object p1, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->appListVer:Ljava/lang/String;

    iput-object p1, v0, Lr/c;->i:Ljava/lang/String;

    return-object v0
.end method
