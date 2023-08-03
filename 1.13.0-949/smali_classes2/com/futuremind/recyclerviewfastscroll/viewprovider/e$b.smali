.class public abstract Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$b;
.super Ljava/lang/Object;
.source "VisibilityAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/view/View;

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:F

.field protected f:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/hbb20/i$b;->b:I

    iput v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$b;->b:I

    .line 3
    sget v0, Lcom/hbb20/i$b;->a:I

    iput v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$b;->c:I

    const/16 v0, 0x3e8

    .line 4
    iput v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$b;->d:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 5
    iput v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$b;->e:F

    .line 6
    iput v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$b;->f:F

    .line 7
    iput-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$b;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public b(I)Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hideAnimatorResource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$b<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$b;->c:I

    return-object p0
.end method

.method public c(I)Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hideDelay"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$b<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$b;->d:I

    return-object p0
.end method

.method public d(F)Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pivotX"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$b<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$b;->e:F

    return-object p0
.end method

.method public e(F)Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pivotY"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$b<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$b;->f:F

    return-object p0
.end method

.method public f(I)Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showAnimatorResource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$b<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$b;->b:I

    return-object p0
.end method
