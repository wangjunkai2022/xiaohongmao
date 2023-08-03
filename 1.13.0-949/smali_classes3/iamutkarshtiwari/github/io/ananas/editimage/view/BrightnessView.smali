.class public Liamutkarshtiwari/github/io/ananas/editimage/view/BrightnessView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "BrightnessView.java"


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
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/view/BrightnessView;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/view/BrightnessView;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/view/BrightnessView;->c()V

    return-void
.end method

.method static synthetic a(Liamutkarshtiwari/github/io/ananas/editimage/view/BrightnessView;F)Lio/reactivex/z;
    .locals 0

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/view/BrightnessView;->d(F)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method private b(F)Landroid/graphics/ColorMatrixColorFilter;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    const/16 v1, 0x14

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v4, 0x0

    aput v4, v1, v2

    const/4 v2, 0x2

    aput v4, v1, v2

    const/4 v2, 0x3

    aput v4, v1, v2

    const/4 v2, 0x4

    aput p1, v1, v2

    const/4 v2, 0x5

    aput v4, v1, v2

    const/4 v2, 0x6

    aput v3, v1, v2

    const/4 v2, 0x7

    aput v4, v1, v2

    const/16 v2, 0x8

    aput v4, v1, v2

    const/16 v2, 0x9

    aput p1, v1, v2

    const/16 v2, 0xa

    aput v4, v1, v2

    const/16 v2, 0xb

    aput v4, v1, v2

    const/16 v2, 0xc

    aput v3, v1, v2

    const/16 v2, 0xd

    aput v4, v1, v2

    const/16 v2, 0xe

    aput p1, v1, v2

    const/16 p1, 0xf

    aput v4, v1, p1

    const/16 p1, 0x10

    aput v4, v1, p1

    const/16 p1, 0x11

    aput v4, v1, p1

    const/16 p1, 0x12

    aput v3, v1, p1

    const/16 p1, 0x13

    aput v4, v1, p1

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->set([F)V

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

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/BrightnessView;->b:Lio/reactivex/subjects/e;

    .line 2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/z;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/z;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lio/reactivex/z;->distinctUntilChanged()Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Liamutkarshtiwari/github/io/ananas/editimage/view/BrightnessView$b;

    invoke-direct {v1, p0}, Liamutkarshtiwari/github/io/ananas/editimage/view/BrightnessView$b;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/view/BrightnessView;)V

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

    new-instance v1, Liamutkarshtiwari/github/io/ananas/editimage/view/BrightnessView$a;

    invoke-direct {v1, p0}, Liamutkarshtiwari/github/io/ananas/editimage/view/BrightnessView$a;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/view/BrightnessView;)V

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

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/view/BrightnessView;->b(F)Landroid/graphics/ColorMatrixColorFilter;

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

.method public getBright()F
    .locals 1

    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/BrightnessView;->a:F

    return v0
.end method

.method public setBright(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = -100.0
            to = 100.0
        .end annotation
    .end param

    .line 1
    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/BrightnessView;->a:F

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/BrightnessView;->b:Lio/reactivex/subjects/e;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/e;->onNext(Ljava/lang/Object;)V

    return-void
.end method
