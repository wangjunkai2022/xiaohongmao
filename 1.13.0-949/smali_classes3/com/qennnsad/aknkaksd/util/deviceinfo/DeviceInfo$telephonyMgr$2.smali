.class final Lcom/qennnsad/aknkaksd/util/deviceinfo/DeviceInfo$telephonyMgr$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DeviceInfo.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/util/deviceinfo/DeviceInfo;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/telephony/TelephonyManager;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroid/telephony/TelephonyManager;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qennnsad/aknkaksd/util/deviceinfo/DeviceInfo;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/util/deviceinfo/DeviceInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/deviceinfo/DeviceInfo$telephonyMgr$2;->this$0:Lcom/qennnsad/aknkaksd/util/deviceinfo/DeviceInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/telephony/TelephonyManager;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/deviceinfo/DeviceInfo$telephonyMgr$2;->this$0:Lcom/qennnsad/aknkaksd/util/deviceinfo/DeviceInfo;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/deviceinfo/DeviceInfo;->access$getContext$p(Lcom/qennnsad/aknkaksd/util/deviceinfo/DeviceInfo;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.telephony.TelephonyManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/deviceinfo/DeviceInfo$telephonyMgr$2;->invoke()Landroid/telephony/TelephonyManager;

    move-result-object v0

    return-object v0
.end method
