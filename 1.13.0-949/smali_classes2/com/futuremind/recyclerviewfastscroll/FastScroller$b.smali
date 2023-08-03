.class Lcom/futuremind/recyclerviewfastscroll/FastScroller$b;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuremind/recyclerviewfastscroll/FastScroller;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;


# direct methods
.method constructor <init>(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$b;->a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$b;->a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    if-ne p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$b;->a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {p1, p2}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->d(Lcom/futuremind/recyclerviewfastscroll/FastScroller;Z)Z

    .line 5
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$b;->a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->b(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)Lcom/futuremind/recyclerviewfastscroll/b;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$b;->a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->c(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)Lcom/futuremind/recyclerviewfastscroll/viewprovider/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/c;->g()V

    :cond_1
    return v0

    :cond_2
    return p2

    .line 6
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$b;->a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->b(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)Lcom/futuremind/recyclerviewfastscroll/b;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$b;->a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->c(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)Lcom/futuremind/recyclerviewfastscroll/viewprovider/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/c;->f()V

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$b;->a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {p1, v0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->d(Lcom/futuremind/recyclerviewfastscroll/FastScroller;Z)Z

    .line 9
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$b;->a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {p1, p2}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->e(Lcom/futuremind/recyclerviewfastscroll/FastScroller;Landroid/view/MotionEvent;)F

    move-result p1

    .line 10
    iget-object p2, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$b;->a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-virtual {p2, p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setScrollerPosition(F)V

    .line 11
    iget-object p2, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$b;->a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {p2, p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->f(Lcom/futuremind/recyclerviewfastscroll/FastScroller;F)V

    return v0
.end method
