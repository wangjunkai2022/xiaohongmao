.class public final Lcom/qennnsad/aknkaksd/util/ScrollableLayout$c;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScrollableLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/util/ScrollableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J(\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0002H\u0016J(\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/qennnsad/aknkaksd/util/ScrollableLayout$c",
        "Landroid/view/GestureDetector$SimpleOnGestureListener;",
        "Landroid/view/MotionEvent;",
        "e1",
        "e2",
        "",
        "distanceX",
        "distanceY",
        "",
        "onScroll",
        "e",
        "onDown",
        "velocityX",
        "velocityY",
        "onFling",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/util/ScrollableLayout;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/util/ScrollableLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout$c;->a:Lcom/qennnsad/aknkaksd/util/ScrollableLayout;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout$c;->a:Lcom/qennnsad/aknkaksd/util/ScrollableLayout;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->getAnimationIsRunning()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string p3, "e1"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e2"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout$c;->a:Lcom/qennnsad/aknkaksd/util/ScrollableLayout;

    invoke-static {p1, p4}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->a(Lcom/qennnsad/aknkaksd/util/ScrollableLayout;F)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string p3, "e1"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e2"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout$c;->a:Lcom/qennnsad/aknkaksd/util/ScrollableLayout;

    neg-float p2, p4

    invoke-virtual {p1, p2}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->p(F)V

    const/4 p1, 0x1

    return p1
.end method
