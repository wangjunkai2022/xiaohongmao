.class Lcom/futuremind/recyclerviewfastscroll/FastScroller$a;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
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

    iput-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$a;->a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "child"
        }
    .end annotation

    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$a;->a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->a(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)V

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "child"
        }
    .end annotation

    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$a;->a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->a(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)V

    return-void
.end method
