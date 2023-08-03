.class public Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$c;
.super Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$b;
.source "VisibilityAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$b<",
        "Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$b;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;
    .locals 8

    new-instance v7, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;

    iget-object v1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$b;->a:Landroid/view/View;

    iget v2, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$b;->b:I

    iget v3, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$b;->c:I

    iget v4, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$b;->e:F

    iget v5, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$b;->f:F

    iget v6, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$b;->d:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;-><init>(Landroid/view/View;IIFFI)V

    return-object v7
.end method
