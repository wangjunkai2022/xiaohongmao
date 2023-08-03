.class public Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SaturationView.java"


# instance fields
.field private a:F

.field private b:Lio/reactivex/subjects/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/e<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView;->c()V

    return-void
.end method

.method static synthetic a(Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView;F)Lio/reactivex/z;
    .locals 0

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView;->d(F)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method private b(F)Landroid/graphics/ColorMatrixColorFilter;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 3
    new-instance p1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    return-object p1
.end method

.method private c()V
    .locals 4

    .line 1
    invoke-static {}, Lio/reactivex/subjects/e;->i()Lio/reactivex/subjects/e;

    move-result-object v0

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView;->b:Lio/reactivex/subjects/e;

    .line 2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/z;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/z;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lio/reactivex/z;->distinctUntilChanged()Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView$b;

    invoke-direct {v1, p0}, Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView$b;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView;)V

    .line 4
    invoke-virtual {v0, v1}, Lio/reactivex/z;->switchMap(Ln7/o;)Lio/reactivex/z;

    move-result-object v0

    .line 5
    invoke-static {}, Lio/reactivex/schedulers/b;->d()Lio/reactivex/h0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/z;->subscribeOn(Lio/reactivex/h0;)Lio/reactivex/z;

    move-result-object v0

    .line 6
    invoke-static {}, Lio/reactivex/android/schedulers/a;->c()Lio/reactivex/h0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/z;->observeOn(Lio/reactivex/h0;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView$a;

    invoke-direct {v1, p0}, Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView$a;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView;)V

    .line 7
    invoke-virtual {v0, v1}, Lio/reactivex/z;->subscribe(Ln7/g;)Lio/reactivex/disposables/c;

    return-void
.end method

.method private d(F)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lio/reactivex/z<",
            "Landroid/graphics/ColorMatrixColorFilter;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView;->b(F)Landroid/graphics/ColorMatrixColorFilter;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/z;->just(Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getSaturation()F
    .locals 1

    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView;->a:F

    return v0
.end method

.method public setSaturation(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 1
    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView;->a:F

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView;->b:Lio/reactivex/subjects/e;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/e;->onNext(Ljava/lang/Object;)V

    return-void
.end method
