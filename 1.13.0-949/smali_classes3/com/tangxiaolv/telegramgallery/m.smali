.class public Lcom/tangxiaolv/telegramgallery/m;
.super Lcom/tangxiaolv/telegramgallery/Actionbar/f;
.source "PhotoAlbumPickerActivity.java"

# interfaces
.implements Lcom/tangxiaolv/telegramgallery/Utils/h$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tangxiaolv/telegramgallery/m$g;,
        Lcom/tangxiaolv/telegramgallery/m$f;,
        Lcom/tangxiaolv/telegramgallery/m$h;
    }
.end annotation


# static fields
.field public static F:I = 0x0

.field public static G:Ljava/lang/String; = null

.field private static final H:I = 0x2

.field private static final I:I = 0x3


# instance fields
.field private A:I

.field private final B:[Ljava/lang/String;

.field private final C:[I

.field private D:Lcom/tangxiaolv/telegramgallery/m$h;

.field private E:Lcom/tangxiaolv/telegramgallery/n;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tangxiaolv/telegramgallery/Utils/g$d;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tangxiaolv/telegramgallery/Utils/g$d;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/tangxiaolv/telegramgallery/Utils/g$k;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tangxiaolv/telegramgallery/Utils/g$k;",
            ">;"
        }
    .end annotation
.end field

.field private p:Z

.field private q:I

.field private r:Landroid/widget/ListView;

.field private s:Lcom/tangxiaolv/telegramgallery/m$g;

.field private t:Landroid/widget/FrameLayout;

.field private u:Landroid/widget/TextView;

.field private v:Landroidx/appcompat/widget/AppCompatTextView;

.field private w:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>([Ljava/lang/String;IZLjava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/m;->k:Ljava/util/ArrayList;

    .line 3
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/m;->l:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/m;->m:Ljava/util/HashMap;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/m;->n:Ljava/util/HashMap;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/m;->o:Ljava/util/List;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/m;->p:Z

    const/4 v0, 0x2

    .line 8
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/m;->q:I

    .line 9
    sput p2, Lcom/tangxiaolv/telegramgallery/m;->F:I

    .line 10
    sput-object p4, Lcom/tangxiaolv/telegramgallery/m;->G:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/m;->B:[Ljava/lang/String;

    .line 12
    new-array p1, p2, [I

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/m;->C:[I

    .line 13
    iput-boolean p3, p0, Lcom/tangxiaolv/telegramgallery/m;->y:Z

    .line 14
    iput-boolean p5, p0, Lcom/tangxiaolv/telegramgallery/m;->z:Z

    return-void
.end method

.method private A0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/m;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/m;->D:Lcom/tangxiaolv/telegramgallery/m$h;

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/m;->x:Z

    if-eqz v0, :cond_2

    :cond_1
    return-void

    .line 2
    :cond_2
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/m;->w0()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/m;->x:Z

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/m;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    .line 7
    iget-object v4, v3, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->h:Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    .line 8
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v3, v3, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->j:Ljava/lang/CharSequence;

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_4
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_5
    iget-object v4, v3, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->e:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 11
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v3, v3, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->j:Ljava/lang/CharSequence;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_6
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_7
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/m;->D:Lcom/tangxiaolv/telegramgallery/m$h;

    invoke-interface {v2, v0, v1}, Lcom/tangxiaolv/telegramgallery/m$h;->c(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic b0(Lcom/tangxiaolv/telegramgallery/m;)Lcom/tangxiaolv/telegramgallery/m$h;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/m;->D:Lcom/tangxiaolv/telegramgallery/m$h;

    return-object p0
.end method

.method static synthetic c0(Lcom/tangxiaolv/telegramgallery/m;)I
    .locals 0

    iget p0, p0, Lcom/tangxiaolv/telegramgallery/m;->A:I

    return p0
.end method

.method static synthetic d0(Lcom/tangxiaolv/telegramgallery/m;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/m;->r:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic e0(Lcom/tangxiaolv/telegramgallery/m;I)I
    .locals 0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/m;->A:I

    return p1
.end method

.method static synthetic f0(Lcom/tangxiaolv/telegramgallery/m;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/m;->n:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic g0(Lcom/tangxiaolv/telegramgallery/m;)[I
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/m;->C:[I

    return-object p0
.end method

.method static synthetic h0(Lcom/tangxiaolv/telegramgallery/m;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tangxiaolv/telegramgallery/m;->y:Z

    return p0
.end method

.method static synthetic i0(Lcom/tangxiaolv/telegramgallery/m;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/m;->k:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic j0(Lcom/tangxiaolv/telegramgallery/m;)I
    .locals 0

    iget p0, p0, Lcom/tangxiaolv/telegramgallery/m;->q:I

    return p0
.end method

.method static synthetic k0(Lcom/tangxiaolv/telegramgallery/m;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/m;->l:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic l0(Lcom/tangxiaolv/telegramgallery/m;Lcom/tangxiaolv/telegramgallery/Utils/g$d;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tangxiaolv/telegramgallery/m;->z0(Lcom/tangxiaolv/telegramgallery/Utils/g$d;IZ)V

    return-void
.end method

.method static synthetic m0(Lcom/tangxiaolv/telegramgallery/m;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tangxiaolv/telegramgallery/m;->z:Z

    return p0
.end method

.method static synthetic n0(Lcom/tangxiaolv/telegramgallery/m;)Landroidx/appcompat/widget/AppCompatTextView;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/m;->v:Landroidx/appcompat/widget/AppCompatTextView;

    return-object p0
.end method

.method static synthetic o0(Lcom/tangxiaolv/telegramgallery/m;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/m;->u:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic p0(Lcom/tangxiaolv/telegramgallery/m;)Lcom/tangxiaolv/telegramgallery/m$g;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/m;->s:Lcom/tangxiaolv/telegramgallery/m$g;

    return-object p0
.end method

.method static synthetic q0(Lcom/tangxiaolv/telegramgallery/m;)Lcom/tangxiaolv/telegramgallery/Actionbar/d;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/m;->w:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    return-object p0
.end method

.method static synthetic r0(Lcom/tangxiaolv/telegramgallery/m;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/m;->m:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic s0(Lcom/tangxiaolv/telegramgallery/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/m;->A0()V

    return-void
.end method

.method static synthetic t0(Lcom/tangxiaolv/telegramgallery/m;)Lcom/tangxiaolv/telegramgallery/n;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/m;->E:Lcom/tangxiaolv/telegramgallery/n;

    return-object p0
.end method

.method static synthetic u0(Lcom/tangxiaolv/telegramgallery/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/m;->y0()V

    return-void
.end method

.method private w0()V
    .locals 4

    .line 1
    sget v0, Lcom/tangxiaolv/telegramgallery/m;->F:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m;->m:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 3
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/m;->m:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    .line 4
    iget v3, v2, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->a:I

    add-int/lit8 v3, v3, -0x1

    aput-object v2, v0, v3

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 6
    :goto_1
    sget v2, Lcom/tangxiaolv/telegramgallery/m;->F:I

    if-ge v1, v2, :cond_2

    .line 7
    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    .line 8
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/m;->o:Ljava/util/List;

    check-cast v2, Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private x0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/m;->r:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/tangxiaolv/telegramgallery/m$d;

    invoke-direct {v1, p0}, Lcom/tangxiaolv/telegramgallery/m$d;-><init>(Lcom/tangxiaolv/telegramgallery/m;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method private y0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->y()Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/tangxiaolv/telegramgallery/e;->a:Landroid/app/Application;

    const-string v1, "window"

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 4
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x2

    .line 5
    iput v1, p0, Lcom/tangxiaolv/telegramgallery/m;->q:I

    .line 6
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/a;->z()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v0, 0x4

    .line 7
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/m;->q:I

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/m;->s:Lcom/tangxiaolv/telegramgallery/m$g;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 9
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/m;->w:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    if-eqz v0, :cond_5

    .line 10
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/a;->z()Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/m;->w:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    .line 12
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 13
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/m;->w:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    :cond_3
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/a;->z()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/tangxiaolv/telegramgallery/e;->a:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_4

    .line 16
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/m;->v:Landroidx/appcompat/widget/AppCompatTextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/m;->v:Landroidx/appcompat/widget/AppCompatTextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_5
    :goto_0
    return-void
.end method

.method private z0(Lcom/tangxiaolv/telegramgallery/Utils/g$d;IZ)V
    .locals 8

    .line 1
    new-instance v7, Lcom/tangxiaolv/telegramgallery/n;

    sget v2, Lcom/tangxiaolv/telegramgallery/m;->F:I

    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/m;->m:Ljava/util/HashMap;

    iget-boolean v6, p0, Lcom/tangxiaolv/telegramgallery/m;->y:Z

    const/4 v5, 0x0

    move-object v0, v7

    move v1, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/tangxiaolv/telegramgallery/n;-><init>(IILcom/tangxiaolv/telegramgallery/Utils/g$d;Ljava/util/HashMap;Ljava/util/ArrayList;Z)V

    iput-object v7, p0, Lcom/tangxiaolv/telegramgallery/m;->E:Lcom/tangxiaolv/telegramgallery/n;

    .line 2
    new-instance p1, Lcom/tangxiaolv/telegramgallery/m$e;

    invoke-direct {p1, p0}, Lcom/tangxiaolv/telegramgallery/m$e;-><init>(Lcom/tangxiaolv/telegramgallery/m;)V

    .line 3
    invoke-virtual {v7, p1}, Lcom/tangxiaolv/telegramgallery/n;->y0(Lcom/tangxiaolv/telegramgallery/n$k;)V

    .line 4
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/m;->E:Lcom/tangxiaolv/telegramgallery/n;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->S(Lcom/tangxiaolv/telegramgallery/Actionbar/f;ZZ)Z

    return-void
.end method


# virtual methods
.method public B0(Lcom/tangxiaolv/telegramgallery/m$h;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/m;->D:Lcom/tangxiaolv/telegramgallery/m$h;

    return-void
.end method

.method public F(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->F(Landroid/content/res/Configuration;)V

    .line 2
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/m;->x0()V

    return-void
.end method

.method public I()Z
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/m;->p:Z

    .line 2
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->f:I

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m;->B:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tangxiaolv/telegramgallery/Utils/g;->o(I[Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/h;->b()Lcom/tangxiaolv/telegramgallery/Utils/h;

    move-result-object v0

    sget v1, Lcom/tangxiaolv/telegramgallery/Utils/h;->E:I

    invoke-virtual {v0, p0, v1}, Lcom/tangxiaolv/telegramgallery/Utils/h;->a(Ljava/lang/Object;I)V

    .line 4
    invoke-super {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->I()Z

    move-result v0

    return v0
.end method

.method public J()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/h;->b()Lcom/tangxiaolv/telegramgallery/Utils/h;

    move-result-object v0

    sget v1, Lcom/tangxiaolv/telegramgallery/Utils/h;->E:I

    invoke-virtual {v0, p0, v1}, Lcom/tangxiaolv/telegramgallery/Utils/h;->f(Ljava/lang/Object;I)V

    .line 2
    invoke-super {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->J()V

    return-void
.end method

.method public L()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->L()V

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/m;->w:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->l()V

    :cond_0
    return-void
.end method

.method public N()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->N()V

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/m;->s:Lcom/tangxiaolv/telegramgallery/m$g;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/m;->x0()V

    return-void
.end method

.method public b()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/tangxiaolv/telegramgallery/m;->v0()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5
    move-object v4, v3

    check-cast v4, Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    .line 6
    iget-boolean v5, v4, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->i:Z

    if-eqz v5, :cond_0

    .line 7
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/o;->E0()Lcom/tangxiaolv/telegramgallery/o;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->y()Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/o;->Z0(Lcom/tangxiaolv/telegramgallery/GalleryActivity;)V

    .line 11
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/o;->E0()Lcom/tangxiaolv/telegramgallery/o;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 12
    iget-boolean v5, p0, Lcom/tangxiaolv/telegramgallery/m;->y:Z

    new-instance v6, Lcom/tangxiaolv/telegramgallery/m$f;

    invoke-direct {v6, p0, v2}, Lcom/tangxiaolv/telegramgallery/m$f;-><init>(Lcom/tangxiaolv/telegramgallery/m;Ljava/util/List;)V

    .line 13
    invoke-virtual/range {v1 .. v6}, Lcom/tangxiaolv/telegramgallery/o;->T0(Ljava/util/List;ZIILcom/tangxiaolv/telegramgallery/o$b0;)V

    goto :goto_1

    .line 14
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 15
    invoke-virtual {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->y()Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    iget-object v1, v1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->S(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public varargs h(I[Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget v0, Lcom/tangxiaolv/telegramgallery/Utils/h;->E:I

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    .line 2
    aget-object v0, p2, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3
    iget v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->f:I

    if-ne v1, v0, :cond_3

    const/4 v0, 0x1

    .line 4
    aget-object v0, p2, v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/m;->k:Ljava/util/ArrayList;

    const/4 v0, 0x3

    .line 5
    aget-object p2, p2, v0

    check-cast p2, Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/m;->l:Ljava/util/ArrayList;

    .line 6
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/m;->t:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_0

    const/16 v0, 0x8

    .line 7
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/m;->r:Landroid/widget/ListView;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_1

    .line 9
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/m;->r:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/m;->u:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 10
    :cond_1
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/m;->s:Lcom/tangxiaolv/telegramgallery/m$g;

    if-eqz p2, :cond_2

    .line 11
    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 12
    :cond_2
    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/m;->p:Z

    :cond_3
    return-void
.end method

.method public r(Landroid/content/Context;)Landroid/view/View;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/r;->f(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/r;->f(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->setItemsBackgroundColor(I)V

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    sget v1, Lcom/tangxiaolv/telegramgallery/q$h;->r1:I

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->setBackButtonImage(I)V

    .line 4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    new-instance v1, Lcom/tangxiaolv/telegramgallery/m$a;

    invoke-direct {v1, p0}, Lcom/tangxiaolv/telegramgallery/m$a;-><init>(Lcom/tangxiaolv/telegramgallery/m;)V

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->setActionBarMenuOnItemClick(Lcom/tangxiaolv/telegramgallery/Actionbar/a$e;)V

    .line 5
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->c:Landroid/view/View;

    .line 6
    move-object v1, v0

    check-cast v1, Landroid/widget/FrameLayout;

    const v1, -0x111112

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 8
    iget-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/m;->y:Z

    const/high16 v2, 0x40800000    # 4.0f

    const/4 v3, -0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-nez v1, :cond_0

    .line 9
    iput v5, p0, Lcom/tangxiaolv/telegramgallery/m;->A:I

    .line 10
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-virtual {v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->m()Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    move-result-object v1

    .line 11
    new-instance v6, Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-direct {v6, p1, v1, v5}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;-><init>(Landroid/content/Context;Lcom/tangxiaolv/telegramgallery/Actionbar/c;I)V

    iput-object v6, p0, Lcom/tangxiaolv/telegramgallery/m;->w:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    const/4 v1, 0x1

    .line 12
    invoke-virtual {v6, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->setSubMenuOpenSide(I)V

    .line 13
    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/m;->w:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    const/4 v7, 0x2

    sget v8, Lcom/tangxiaolv/telegramgallery/q$o;->p:I

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9, v5}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->k(ILjava/lang/String;I)Landroid/widget/TextView;

    .line 14
    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/m;->w:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    sget v7, Lcom/tangxiaolv/telegramgallery/q$o;->q:I

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x3

    invoke-virtual {v6, v9, v7, v5}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->k(ILjava/lang/String;I)Landroid/widget/TextView;

    .line 15
    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    iget-object v7, p0, Lcom/tangxiaolv/telegramgallery/m;->w:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 16
    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/m;->w:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 17
    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 18
    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/high16 v7, 0x42200000    # 40.0f

    .line 19
    invoke-static {v7}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v7

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/high16 v7, 0x42600000    # 56.0f

    .line 20
    invoke-static {v7}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v7

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v7, 0x33

    .line 21
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 22
    iget-object v7, p0, Lcom/tangxiaolv/telegramgallery/m;->w:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/m;->w:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    new-instance v7, Lcom/tangxiaolv/telegramgallery/m$b;

    invoke-direct {v7, p0}, Lcom/tangxiaolv/telegramgallery/m$b;-><init>(Lcom/tangxiaolv/telegramgallery/m;)V

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    new-instance v6, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v6, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/tangxiaolv/telegramgallery/m;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 25
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 26
    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/m;->v:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 27
    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/m;->v:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 28
    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/m;->v:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 29
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m;->v:Landroidx/appcompat/widget/AppCompatTextView;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 30
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m;->v:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/r;->e(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m;->v:Landroidx/appcompat/widget/AppCompatTextView;

    sget v6, Lcom/tangxiaolv/telegramgallery/q$h;->v1:I

    invoke-virtual {v1, v5, v5, v6, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 32
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m;->v:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 33
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m;->v:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/r;->e(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-static {v1, v6}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawableTintList(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 34
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m;->v:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    .line 35
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m;->w:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/m;->v:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 36
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m;->v:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 37
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 38
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v6, 0x10

    .line 39
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 40
    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/m;->v:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    sget v6, Lcom/tangxiaolv/telegramgallery/q$o;->a:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 42
    :goto_0
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/m;->r:Landroid/widget/ListView;

    .line 43
    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v6

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v7

    .line 44
    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v2

    .line 45
    invoke-virtual {v1, v6, v5, v7, v2}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 46
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m;->r:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 47
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m;->r:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setHorizontalScrollBarEnabled(Z)V

    .line 48
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m;->r:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 49
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m;->r:Landroid/widget/ListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 50
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m;->r:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 51
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m;->r:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 52
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m;->r:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setDrawingCacheEnabled(Z)V

    .line 53
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m;->r:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    .line 54
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m;->r:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 55
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m;->r:Landroid/widget/ListView;

    .line 56
    invoke-virtual {v1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 57
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 58
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 59
    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/m;->r:Landroid/widget/ListView;

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m;->r:Landroid/widget/ListView;

    new-instance v6, Lcom/tangxiaolv/telegramgallery/m$g;

    invoke-direct {v6, p0, p1}, Lcom/tangxiaolv/telegramgallery/m$g;-><init>(Lcom/tangxiaolv/telegramgallery/m;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/tangxiaolv/telegramgallery/m;->s:Lcom/tangxiaolv/telegramgallery/m$g;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m;->r:Landroid/widget/ListView;

    const v6, -0xcccccd

    invoke-static {v1, v6}, Lcom/tangxiaolv/telegramgallery/Utils/a;->F(Landroid/widget/AbsListView;I)V

    .line 62
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/m;->u:Landroid/widget/TextView;

    const v6, -0x7f7f80

    .line 63
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m;->u:Landroid/widget/TextView;

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 65
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m;->u:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 66
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m;->u:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m;->u:Landroid/widget/TextView;

    sget v8, Lcom/tangxiaolv/telegramgallery/q$o;->j:I

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    .line 68
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 69
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m;->u:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 70
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 71
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/high16 v8, 0x42400000    # 48.0f

    .line 72
    invoke-static {v8}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v9

    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 73
    iget-object v9, p0, Lcom/tangxiaolv/telegramgallery/m;->u:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m;->u:Landroid/widget/TextView;

    new-instance v9, Lcom/tangxiaolv/telegramgallery/m$c;

    invoke-direct {v9, p0}, Lcom/tangxiaolv/telegramgallery/m$c;-><init>(Lcom/tangxiaolv/telegramgallery/m;)V

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 75
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/m;->t:Landroid/widget/FrameLayout;

    .line 76
    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 77
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m;->t:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 78
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/m;->t:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 79
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 80
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 81
    invoke-static {v8}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 82
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m;->t:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 84
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/m;->t:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 85
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/m;->t:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 86
    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 87
    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 88
    iput v6, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 89
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/m;->t:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/m;->p:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/m;->k:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 91
    :cond_1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/m;->t:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 92
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/m;->r:Landroid/widget/ListView;

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_1

    .line 93
    :cond_2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/m;->t:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 94
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/m;->r:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/m;->u:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 95
    :goto_1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->c:Landroid/view/View;

    return-object p1
.end method

.method public v0()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/m;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2
    sget v0, Lcom/tangxiaolv/telegramgallery/m;->F:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m;->m:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 4
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/m;->m:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    .line 5
    iget v3, v2, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->a:I

    add-int/lit8 v3, v3, -0x1

    aput-object v2, v0, v3

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 8
    :goto_1
    sget v3, Lcom/tangxiaolv/telegramgallery/m;->F:I

    if-ge v2, v3, :cond_2

    .line 9
    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    .line 10
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/m;->o:Ljava/util/List;

    check-cast v3, Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v1

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method
