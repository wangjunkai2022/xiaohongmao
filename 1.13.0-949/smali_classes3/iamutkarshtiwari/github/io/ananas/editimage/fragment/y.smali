.class public Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;
.super Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;
.source "MainMenuFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lh7/a;


# static fields
.field public static final o:I

.field public static final p:Ljava/lang/String;


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/os/Bundle;

.field private final m:Lio/reactivex/subjects/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lio/reactivex/disposables/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;-><init>()V

    .line 2
    invoke-static {}, Lio/reactivex/subjects/b;->i()Lio/reactivex/subjects/b;

    move-result-object v0

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->m:Lio/reactivex/subjects/b;

    .line 3
    new-instance v0, Lio/reactivex/disposables/b;

    invoke-direct {v0}, Lio/reactivex/disposables/b;-><init>()V

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->n:Lio/reactivex/disposables/b;

    return-void
.end method

.method public static synthetic X(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->a0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic Y(Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->Z(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic Z(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->c:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->d:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 3
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->e:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 4
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->f:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 5
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->g:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 6
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->h:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 7
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->i:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 8
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->j:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 9
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->k:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private static synthetic a0(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public static b0()Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;
    .locals 1

    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;

    invoke-direct {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;-><init>()V

    return-object v0
.end method

.method private c0()V
    .locals 2

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->r:Liamutkarshtiwari/github/io/ananas/editimage/view/CustomViewPager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomViewPager;->setCurrentItem(I)V

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->w:Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->W()V

    return-void
.end method

.method private d0()V
    .locals 2

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->r:Liamutkarshtiwari/github/io/ananas/editimage/view/CustomViewPager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomViewPager;->setCurrentItem(I)V

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->y:Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->W()V

    return-void
.end method

.method private e0()V
    .locals 2

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->r:Liamutkarshtiwari/github/io/ananas/editimage/view/CustomViewPager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomViewPager;->setCurrentItem(I)V

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->z:Liamutkarshtiwari/github/io/ananas/editimage/fragment/o;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/o;->W()V

    return-void
.end method

.method private f0()V
    .locals 2

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->r:Liamutkarshtiwari/github/io/ananas/editimage/view/CustomViewPager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomViewPager;->setCurrentItem(I)V

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->A:Liamutkarshtiwari/github/io/ananas/editimage/fragment/f0;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/f0;->W()V

    return-void
.end method

.method private g0()V
    .locals 2

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->r:Liamutkarshtiwari/github/io/ananas/editimage/view/CustomViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomViewPager;->setCurrentItem(I)V

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->u:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->W()V

    return-void
.end method

.method private h0()V
    .locals 2

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->r:Liamutkarshtiwari/github/io/ananas/editimage/view/CustomViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomViewPager;->setCurrentItem(I)V

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->t:Liamutkarshtiwari/github/io/ananas/editimage/fragment/v;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/v;->W()V

    return-void
.end method

.method private i0()V
    .locals 2

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->r:Liamutkarshtiwari/github/io/ananas/editimage/view/CustomViewPager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomViewPager;->setCurrentItem(I)V

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->x:Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->W()V

    return-void
.end method

.method private j0()V
    .locals 2

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->r:Liamutkarshtiwari/github/io/ananas/editimage/view/CustomViewPager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomViewPager;->setCurrentItem(I)V

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->v:Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;->W()V

    return-void
.end method

.method private k0()V
    .locals 2

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->r:Liamutkarshtiwari/github/io/ananas/editimage/view/CustomViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomViewPager;->setCurrentItem(I)V

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->s:Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->W()V

    return-void
.end method

.method private l0()V
    .locals 4

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->n:Lio/reactivex/disposables/b;

    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->m:Lio/reactivex/subjects/b;

    .line 2
    invoke-static {}, Lio/reactivex/android/schedulers/a;->c()Lio/reactivex/h0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/z;->subscribeOn(Lio/reactivex/h0;)Lio/reactivex/z;

    move-result-object v1

    new-instance v2, Liamutkarshtiwari/github/io/ananas/editimage/fragment/w;

    invoke-direct {v2, p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/w;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;)V

    sget-object v3, Liamutkarshtiwari/github/io/ananas/editimage/fragment/x;->a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/x;

    .line 3
    invoke-virtual {v1, v2, v3}, Lio/reactivex/z;->subscribe(Ln7/g;Ln7/g;)Lio/reactivex/disposables/c;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/b;->b(Lio/reactivex/disposables/c;)Z

    return-void
.end method


# virtual methods
.method public E(Z)V
    .locals 1

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->m:Lio/reactivex/subjects/b;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public U()V
    .locals 0

    return-void
.end method

.method public W()V
    .locals 0

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->b:Landroid/view/View;

    sget v0, Lf7/b$i;->j1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->c:Landroid/view/View;

    .line 3
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->b:Landroid/view/View;

    sget v0, Lf7/b$i;->g1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->d:Landroid/view/View;

    .line 4
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->b:Landroid/view/View;

    sget v0, Lf7/b$i;->f1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->e:Landroid/view/View;

    .line 5
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->b:Landroid/view/View;

    sget v0, Lf7/b$i;->i1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->f:Landroid/view/View;

    .line 6
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->b:Landroid/view/View;

    sget v0, Lf7/b$i;->k1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->g:Landroid/view/View;

    .line 7
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->b:Landroid/view/View;

    sget v0, Lf7/b$i;->h1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->h:Landroid/view/View;

    .line 8
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->b:Landroid/view/View;

    sget v0, Lf7/b$i;->c1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->i:Landroid/view/View;

    .line 9
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->b:Landroid/view/View;

    sget v0, Lf7/b$i;->d1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->j:Landroid/view/View;

    .line 10
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->b:Landroid/view/View;

    sget v0, Lf7/b$i;->e1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->k:Landroid/view/View;

    .line 11
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->l:Landroid/os/Bundle;

    const-string v0, "sticker_feature"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->c:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->c:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    :cond_0
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->l:Landroid/os/Bundle;

    const-string v0, "filter_feature"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 15
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->d:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->d:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    :cond_1
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->l:Landroid/os/Bundle;

    const-string v0, "crop_feature"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 18
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->e:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->e:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    :cond_2
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->l:Landroid/os/Bundle;

    const-string v0, "rotate_feature"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 21
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->f:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->f:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    :cond_3
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->l:Landroid/os/Bundle;

    const-string v0, "add_text_feature"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 24
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->g:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->g:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    :cond_4
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->l:Landroid/os/Bundle;

    const-string v0, "paint_feature"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 27
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->h:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->h:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    :cond_5
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->l:Landroid/os/Bundle;

    const-string v0, "beauty_feature"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 30
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->i:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->i:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    :cond_6
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->l:Landroid/os/Bundle;

    const-string v0, "brightness_feature"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 33
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->j:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->j:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    :cond_7
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->l:Landroid/os/Bundle;

    const-string v0, "saturation_feature"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 36
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->k:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->k:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    :cond_8
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->l0()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->c:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->k0()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->d:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 4
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->h0()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->e:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 6
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->g0()V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->f:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 8
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->j0()V

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->g:Landroid/view/View;

    if-ne p1, v0, :cond_4

    .line 10
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->c0()V

    goto :goto_0

    .line 11
    :cond_4
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->h:Landroid/view/View;

    if-ne p1, v0, :cond_5

    .line 12
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->i0()V

    goto :goto_0

    .line 13
    :cond_5
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->i:Landroid/view/View;

    if-ne p1, v0, :cond_6

    .line 14
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->d0()V

    goto :goto_0

    .line 15
    :cond_6
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->j:Landroid/view/View;

    if-ne p1, v0, :cond_7

    .line 16
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->e0()V

    goto :goto_0

    .line 17
    :cond_7
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->k:Landroid/view/View;

    if-ne p1, v0, :cond_8

    .line 18
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->f0()V

    :cond_8
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    sget p2, Lf7/b$l;->g0:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->b:Landroid/view/View;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->l:Landroid/os/Bundle;

    .line 3
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->b:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->n:Lio/reactivex/disposables/b;

    invoke-virtual {v0}, Lio/reactivex/disposables/b;->dispose()V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method
