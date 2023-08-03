.class Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WheelScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;->b(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;I)I

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;->c(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;->a(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;)I

    move-result v2

    neg-float p1, p4

    float-to-int v4, p1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, -0x7fffffff

    const v8, 0x7fffffff

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 3
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;

    invoke-static {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;->d(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
