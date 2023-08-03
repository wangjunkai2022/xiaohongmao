.class public abstract Lcom/qennnsad/aknkaksd/Hilt_BeautyLiveApplication;
.super Lcom/qennnsad/aknkaksd/BaseBeautyApplication;
.source "Hilt_BeautyLiveApplication.java"

# interfaces
.implements Lq6/d;


# instance fields
.field private final componentManager:Ldagger/hilt/android/internal/managers/d;

.field private injected:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/Hilt_BeautyLiveApplication;->injected:Z

    .line 3
    new-instance v0, Ldagger/hilt/android/internal/managers/d;

    new-instance v1, Lcom/qennnsad/aknkaksd/Hilt_BeautyLiveApplication$a;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/Hilt_BeautyLiveApplication$a;-><init>(Lcom/qennnsad/aknkaksd/Hilt_BeautyLiveApplication;)V

    invoke-direct {v0, v1}, Ldagger/hilt/android/internal/managers/d;-><init>(Ldagger/hilt/android/internal/managers/f;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/Hilt_BeautyLiveApplication;->componentManager:Ldagger/hilt/android/internal/managers/d;

    return-void
.end method


# virtual methods
.method public final componentManager()Ldagger/hilt/android/internal/managers/d;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/Hilt_BeautyLiveApplication;->componentManager:Ldagger/hilt/android/internal/managers/d;

    return-object v0
.end method

.method public bridge synthetic componentManager()Lq6/c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/Hilt_BeautyLiveApplication;->componentManager()Ldagger/hilt/android/internal/managers/d;

    move-result-object v0

    return-object v0
.end method

.method public final generatedComponent()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/Hilt_BeautyLiveApplication;->componentManager()Ldagger/hilt/android/internal/managers/d;

    move-result-object v0

    invoke-virtual {v0}, Ldagger/hilt/android/internal/managers/d;->generatedComponent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected hiltInternalInject()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/Hilt_BeautyLiveApplication;->injected:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/Hilt_BeautyLiveApplication;->injected:Z

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/Hilt_BeautyLiveApplication;->generatedComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/c;

    invoke-static {p0}, Lq6/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qennnsad/aknkaksd/BeautyLiveApplication;

    invoke-interface {v0, v1}, Lcom/qennnsad/aknkaksd/c;->b(Lcom/qennnsad/aknkaksd/BeautyLiveApplication;)V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/Hilt_BeautyLiveApplication;->hiltInternalInject()V

    .line 2
    invoke-super {p0}, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->onCreate()V

    return-void
.end method
