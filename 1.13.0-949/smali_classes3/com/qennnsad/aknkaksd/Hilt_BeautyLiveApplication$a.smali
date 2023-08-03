.class Lcom/qennnsad/aknkaksd/Hilt_BeautyLiveApplication$a;
.super Ljava/lang/Object;
.source "Hilt_BeautyLiveApplication.java"

# interfaces
.implements Ldagger/hilt/android/internal/managers/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/Hilt_BeautyLiveApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/Hilt_BeautyLiveApplication;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/Hilt_BeautyLiveApplication;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/Hilt_BeautyLiveApplication$a;->a:Lcom/qennnsad/aknkaksd/Hilt_BeautyLiveApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lcom/qennnsad/aknkaksd/f;->a()Lcom/qennnsad/aknkaksd/f$f;

    move-result-object v0

    new-instance v1, Ldagger/hilt/android/internal/modules/c;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/Hilt_BeautyLiveApplication$a;->a:Lcom/qennnsad/aknkaksd/Hilt_BeautyLiveApplication;

    invoke-direct {v1, v2}, Ldagger/hilt/android/internal/modules/c;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/f$f;->b(Ldagger/hilt/android/internal/modules/c;)Lcom/qennnsad/aknkaksd/f$f;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/f$f;->c()Lcom/qennnsad/aknkaksd/d$i;

    move-result-object v0

    return-object v0
.end method
