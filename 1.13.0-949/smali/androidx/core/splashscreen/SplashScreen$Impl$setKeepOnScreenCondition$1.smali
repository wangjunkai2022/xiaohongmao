.class public final Landroidx/core/splashscreen/SplashScreen$Impl$setKeepOnScreenCondition$1;
.super Ljava/lang/Object;
.source "SplashScreen.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/splashscreen/SplashScreen$Impl;->setKeepOnScreenCondition(Landroidx/core/splashscreen/SplashScreen$KeepOnScreenCondition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSplashScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SplashScreen.kt\nandroidx/core/splashscreen/SplashScreen$Impl$setKeepOnScreenCondition$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,512:1\n1#2:513\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "androidx/core/splashscreen/SplashScreen$Impl$setKeepOnScreenCondition$1",
        "Landroid/view/ViewTreeObserver$OnPreDrawListener;",
        "onPreDraw",
        "",
        "core-splashscreen_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $contentView:Landroid/view/View;

.field final synthetic this$0:Landroidx/core/splashscreen/SplashScreen$Impl;


# direct methods
.method constructor <init>(Landroidx/core/splashscreen/SplashScreen$Impl;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/splashscreen/SplashScreen$Impl$setKeepOnScreenCondition$1;->this$0:Landroidx/core/splashscreen/SplashScreen$Impl;

    iput-object p2, p0, Landroidx/core/splashscreen/SplashScreen$Impl$setKeepOnScreenCondition$1;->$contentView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/splashscreen/SplashScreen$Impl$setKeepOnScreenCondition$1;->this$0:Landroidx/core/splashscreen/SplashScreen$Impl;

    invoke-virtual {v0}, Landroidx/core/splashscreen/SplashScreen$Impl;->getSplashScreenWaitPredicate()Landroidx/core/splashscreen/SplashScreen$KeepOnScreenCondition;

    move-result-object v0

    invoke-interface {v0}, Landroidx/core/splashscreen/SplashScreen$KeepOnScreenCondition;->shouldKeepOnScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/core/splashscreen/SplashScreen$Impl$setKeepOnScreenCondition$1;->$contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3
    iget-object v0, p0, Landroidx/core/splashscreen/SplashScreen$Impl$setKeepOnScreenCondition$1;->this$0:Landroidx/core/splashscreen/SplashScreen$Impl;

    invoke-static {v0}, Landroidx/core/splashscreen/SplashScreen$Impl;->access$getMSplashScreenViewProvider$p(Landroidx/core/splashscreen/SplashScreen$Impl;)Landroidx/core/splashscreen/SplashScreenViewProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/core/splashscreen/SplashScreen$Impl$setKeepOnScreenCondition$1;->this$0:Landroidx/core/splashscreen/SplashScreen$Impl;

    invoke-virtual {v1, v0}, Landroidx/core/splashscreen/SplashScreen$Impl;->dispatchOnExitAnimation(Landroidx/core/splashscreen/SplashScreenViewProvider;)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
