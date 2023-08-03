.class public Lcom/google/android/exoplayer2/ui/PlayerControlView;
.super Landroid/widget/FrameLayout;
.source "PlayerControlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/PlayerControlView$b;,
        Lcom/google/android/exoplayer2/ui/PlayerControlView$c;,
        Lcom/google/android/exoplayer2/ui/PlayerControlView$d;
    }
.end annotation


# static fields
.field public static final T1:I = 0x1388

.field public static final V1:I = 0x0

.field public static final b2:I = 0xc8

.field public static final g2:I = 0x64

.field private static final p2:I = 0x3e8


# instance fields
.field private final A:Landroid/graphics/drawable/Drawable;

.field private final B:Landroid/graphics/drawable/Drawable;

.field private final C:F

.field private final D:F

.field private final E:Ljava/lang/String;

.field private final F:Ljava/lang/String;

.field private G:Lcom/google/android/exoplayer2/v1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private H:Lcom/google/android/exoplayer2/j;

.field private I:Lcom/google/android/exoplayer2/ui/PlayerControlView$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private J:Lcom/google/android/exoplayer2/u1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:I

.field private P:I

.field private Q:I

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:J

.field private final a:Lcom/google/android/exoplayer2/ui/PlayerControlView$b;

.field private final b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/ui/PlayerControlView$d;",
            ">;"
        }
    .end annotation
.end field

.field private b1:[J

.field private final c:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final d:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final e:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final f:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final g:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g1:[Z

.field private final h:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final i:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final j:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final k:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final l:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final m:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final n:Lcom/google/android/exoplayer2/ui/u0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final o:Ljava/lang/StringBuilder;

.field private final p:Ljava/util/Formatter;

.field private p1:[J

.field private final q:Lcom/google/android/exoplayer2/s2$b;

.field private final r:Lcom/google/android/exoplayer2/s2$d;

.field private final s:Ljava/lang/Runnable;

.field private final t:Ljava/lang/Runnable;

.field private final u:Landroid/graphics/drawable/Drawable;

.field private final v:Landroid/graphics/drawable/Drawable;

.field private final w:Landroid/graphics/drawable/Drawable;

.field private final x:Ljava/lang/String;

.field private x1:[Z

.field private final y:Ljava/lang/String;

.field private y1:J

.field private final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.ui"

    invoke-static {v0}, Lcom/google/android/exoplayer2/u0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V
    .locals 9
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    sget p2, Lcom/google/android/exoplayer2/ui/q$i;->c:I

    const/16 p3, 0x1388

    .line 6
    iput p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->O:I

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->Q:I

    const/16 v1, 0xc8

    .line 8
    iput v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->P:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    iput-wide v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->W:J

    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->R:Z

    .line 11
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->S:Z

    .line 12
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->T:Z

    .line 13
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->U:Z

    .line 14
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->V:Z

    const/16 v1, 0x3a98

    if-eqz p4, :cond_0

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcom/google/android/exoplayer2/ui/q$m;->g0:[I

    .line 16
    invoke-virtual {v2, p4, v3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 17
    :try_start_0
    sget v3, Lcom/google/android/exoplayer2/ui/q$m;->r0:I

    invoke-virtual {v2, v3, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 18
    sget v3, Lcom/google/android/exoplayer2/ui/q$m;->n0:I

    .line 19
    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 20
    sget v3, Lcom/google/android/exoplayer2/ui/q$m;->C0:I

    iget v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->O:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->O:I

    .line 21
    sget v3, Lcom/google/android/exoplayer2/ui/q$m;->m0:I

    .line 22
    invoke-virtual {v2, v3, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 23
    iget v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->Q:I

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->F(Landroid/content/res/TypedArray;I)I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->Q:I

    .line 24
    sget v3, Lcom/google/android/exoplayer2/ui/q$m;->A0:I

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->R:Z

    .line 25
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->R:Z

    .line 26
    sget v3, Lcom/google/android/exoplayer2/ui/q$m;->x0:I

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->S:Z

    .line 27
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->S:Z

    .line 28
    sget v3, Lcom/google/android/exoplayer2/ui/q$m;->z0:I

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->T:Z

    .line 29
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->T:Z

    .line 30
    sget v3, Lcom/google/android/exoplayer2/ui/q$m;->y0:I

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->U:Z

    .line 31
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->U:Z

    .line 32
    sget v3, Lcom/google/android/exoplayer2/ui/q$m;->B0:I

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->V:Z

    .line 33
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->V:Z

    .line 34
    sget v3, Lcom/google/android/exoplayer2/ui/q$m;->D0:I

    iget v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->P:I

    .line 35
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 36
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setTimeBarMinUpdateInterval(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    throw p1

    .line 39
    :cond_0
    :goto_0
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 40
    new-instance v2, Lcom/google/android/exoplayer2/s2$b;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/s2$b;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->q:Lcom/google/android/exoplayer2/s2$b;

    .line 41
    new-instance v2, Lcom/google/android/exoplayer2/s2$d;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/s2$d;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r:Lcom/google/android/exoplayer2/s2$d;

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o:Ljava/lang/StringBuilder;

    .line 43
    new-instance v3, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p:Ljava/util/Formatter;

    new-array v2, v0, [J

    .line 44
    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b1:[J

    new-array v2, v0, [Z

    .line 45
    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g1:[Z

    new-array v2, v0, [J

    .line 46
    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p1:[J

    new-array v2, v0, [Z

    .line 47
    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->x1:[Z

    .line 48
    new-instance v2, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;-><init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;Lcom/google/android/exoplayer2/ui/PlayerControlView$a;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView$b;

    .line 49
    new-instance v4, Lcom/google/android/exoplayer2/k;

    int-to-long v5, v1

    int-to-long v7, p3

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/exoplayer2/k;-><init>(JJ)V

    iput-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:Lcom/google/android/exoplayer2/j;

    .line 50
    new-instance p3, Lcom/google/android/exoplayer2/ui/l;

    invoke-direct {p3, p0}, Lcom/google/android/exoplayer2/ui/l;-><init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->s:Ljava/lang/Runnable;

    .line 51
    new-instance p3, Lcom/google/android/exoplayer2/ui/k;

    invoke-direct {p3, p0}, Lcom/google/android/exoplayer2/ui/k;-><init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->t:Ljava/lang/Runnable;

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    invoke-virtual {p3, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 p2, 0x40000

    .line 53
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    .line 54
    sget p2, Lcom/google/android/exoplayer2/ui/q$g;->D0:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/ui/u0;

    .line 55
    sget v1, Lcom/google/android/exoplayer2/ui/q$g;->E0:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p3, :cond_1

    .line 56
    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n:Lcom/google/android/exoplayer2/ui/u0;

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    .line 57
    new-instance p3, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    invoke-direct {p3, p1, v3, v0, p4}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    .line 58
    invoke-virtual {p3, p2}, Landroid/view/View;->setId(I)V

    .line 59
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 61
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p4

    .line 62
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 63
    invoke-virtual {p2, p3, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 64
    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n:Lcom/google/android/exoplayer2/ui/u0;

    goto :goto_1

    .line 65
    :cond_2
    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n:Lcom/google/android/exoplayer2/ui/u0;

    .line 66
    :goto_1
    sget p2, Lcom/google/android/exoplayer2/ui/q$g;->i0:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l:Landroid/widget/TextView;

    .line 67
    sget p2, Lcom/google/android/exoplayer2/ui/q$g;->B0:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m:Landroid/widget/TextView;

    .line 68
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n:Lcom/google/android/exoplayer2/ui/u0;

    if-eqz p2, :cond_3

    .line 69
    invoke-interface {p2, v2}, Lcom/google/android/exoplayer2/ui/u0;->b(Lcom/google/android/exoplayer2/ui/u0$a;)V

    .line 70
    :cond_3
    sget p2, Lcom/google/android/exoplayer2/ui/q$g;->y0:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e:Landroid/view/View;

    if-eqz p2, :cond_4

    .line 71
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    :cond_4
    sget p2, Lcom/google/android/exoplayer2/ui/q$g;->x0:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f:Landroid/view/View;

    if-eqz p2, :cond_5

    .line 73
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    :cond_5
    sget p2, Lcom/google/android/exoplayer2/ui/q$g;->C0:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c:Landroid/view/View;

    if-eqz p2, :cond_6

    .line 75
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    :cond_6
    sget p2, Lcom/google/android/exoplayer2/ui/q$g;->t0:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d:Landroid/view/View;

    if-eqz p2, :cond_7

    .line 77
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    :cond_7
    sget p2, Lcom/google/android/exoplayer2/ui/q$g;->G0:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h:Landroid/view/View;

    if-eqz p2, :cond_8

    .line 79
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    :cond_8
    sget p2, Lcom/google/android/exoplayer2/ui/q$g;->m0:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g:Landroid/view/View;

    if-eqz p2, :cond_9

    .line 81
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    :cond_9
    sget p2, Lcom/google/android/exoplayer2/ui/q$g;->F0:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/widget/ImageView;

    if-eqz p2, :cond_a

    .line 83
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    :cond_a
    sget p2, Lcom/google/android/exoplayer2/ui/q$g;->K0:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j:Landroid/widget/ImageView;

    if-eqz p2, :cond_b

    .line 85
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    :cond_b
    sget p2, Lcom/google/android/exoplayer2/ui/q$g;->S0:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->k:Landroid/view/View;

    .line 87
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setShowVrButton(Z)V

    .line 88
    invoke-direct {p0, v0, v0, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->S(ZZLandroid/view/View;)V

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 90
    sget p2, Lcom/google/android/exoplayer2/ui/q$h;->c:I

    .line 91
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p2, p3

    iput p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->C:F

    .line 92
    sget p2, Lcom/google/android/exoplayer2/ui/q$h;->b:I

    .line 93
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, p3

    iput p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->D:F

    .line 94
    sget p2, Lcom/google/android/exoplayer2/ui/q$e;->i:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->u:Landroid/graphics/drawable/Drawable;

    .line 95
    sget p2, Lcom/google/android/exoplayer2/ui/q$e;->j:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->v:Landroid/graphics/drawable/Drawable;

    .line 96
    sget p2, Lcom/google/android/exoplayer2/ui/q$e;->h:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Landroid/graphics/drawable/Drawable;

    .line 97
    sget p2, Lcom/google/android/exoplayer2/ui/q$e;->m:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->A:Landroid/graphics/drawable/Drawable;

    .line 98
    sget p2, Lcom/google/android/exoplayer2/ui/q$e;->l:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->B:Landroid/graphics/drawable/Drawable;

    .line 99
    sget p2, Lcom/google/android/exoplayer2/ui/q$k;->q:I

    .line 100
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->x:Ljava/lang/String;

    .line 101
    sget p2, Lcom/google/android/exoplayer2/ui/q$k;->r:I

    .line 102
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->y:Ljava/lang/String;

    .line 103
    sget p2, Lcom/google/android/exoplayer2/ui/q$k;->p:I

    .line 104
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->z:Ljava/lang/String;

    .line 105
    sget p2, Lcom/google/android/exoplayer2/ui/q$k;->x:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->E:Ljava/lang/String;

    .line 106
    sget p2, Lcom/google/android/exoplayer2/ui/q$k;->w:I

    .line 107
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->F:Ljava/lang/String;

    return-void
.end method

.method private static A(Lcom/google/android/exoplayer2/s2;Lcom/google/android/exoplayer2/s2$d;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/s2;->u()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-le v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/s2;->u()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 3
    invoke-virtual {p0, v2, p1}, Lcom/google/android/exoplayer2/s2;->r(ILcom/google/android/exoplayer2/s2$d;)Lcom/google/android/exoplayer2/s2$d;

    move-result-object v3

    iget-wide v3, v3, Lcom/google/android/exoplayer2/s2$d;->n:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private C(Lcom/google/android/exoplayer2/v1;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:Lcom/google/android/exoplayer2/j;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/android/exoplayer2/j;->m(Lcom/google/android/exoplayer2/v1;Z)Z

    return-void
.end method

.method private D(Lcom/google/android/exoplayer2/v1;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->J:Lcom/google/android/exoplayer2/u1;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/u1;->a()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:Lcom/google/android/exoplayer2/j;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/j;->i(Lcom/google/android/exoplayer2/v1;)Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 5
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->j0()I

    move-result v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->M(Lcom/google/android/exoplayer2/v1;IJ)Z

    .line 6
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:Lcom/google/android/exoplayer2/j;

    invoke-interface {v0, p1, v1}, Lcom/google/android/exoplayer2/j;->m(Lcom/google/android/exoplayer2/v1;Z)Z

    return-void
.end method

.method private E(Lcom/google/android/exoplayer2/v1;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->c()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->Q0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->C(Lcom/google/android/exoplayer2/v1;)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->D(Lcom/google/android/exoplayer2/v1;)V

    :goto_1
    return-void
.end method

.method private static F(Landroid/content/res/TypedArray;I)I
    .locals 1

    sget v0, Lcom/google/android/exoplayer2/ui/q$m;->q0:I

    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    return p0
.end method

.method private H()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->t:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->O:I

    if-lez v0, :cond_0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->O:I

    int-to-long v3, v2

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->W:J

    .line 4
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->t:Ljava/lang/Runnable;

    int-to-long v1, v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->W:J

    :cond_1
    :goto_0
    return-void
.end method

.method private static I(I)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x59

    if-eq p0, v0, :cond_1

    const/16 v0, 0x55

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x57

    if-eq p0, v0, :cond_1

    const/16 v0, 0x58

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private L()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->P()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    :goto_0
    return-void
.end method

.method private M(Lcom/google/android/exoplayer2/v1;IJ)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:Lcom/google/android/exoplayer2/j;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/j;->c(Lcom/google/android/exoplayer2/v1;IJ)Z

    move-result p1

    return p1
.end method

.method private N(Lcom/google/android/exoplayer2/v1;J)V
    .locals 6

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->A0()Lcom/google/android/exoplayer2/s2;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->M:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->u()I

    move-result v1

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r:Lcom/google/android/exoplayer2/s2$d;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/s2;->r(ILcom/google/android/exoplayer2/s2$d;)Lcom/google/android/exoplayer2/s2$d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/s2$d;->f()J

    move-result-wide v3

    cmp-long v5, p2, v3

    if-gez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v1, -0x1

    if-ne v2, v5, :cond_1

    move-wide p2, v3

    goto :goto_1

    :cond_1
    sub-long/2addr p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->j0()I

    move-result v2

    .line 6
    :goto_1
    invoke-direct {p0, p1, v2, p2, p3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->M(Lcom/google/android/exoplayer2/v1;IJ)Z

    .line 7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->V()V

    return-void
.end method

.method private P()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->G:Lcom/google/android/exoplayer2/v1;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/exoplayer2/v1;->c()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->G:Lcom/google/android/exoplayer2/v1;

    .line 3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/v1;->c()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->G:Lcom/google/android/exoplayer2/v1;

    .line 4
    invoke-interface {v0}, Lcom/google/android/exoplayer2/v1;->Q0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private R()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->U()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->T()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->W()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->X()V

    .line 5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->Y()V

    return-void
.end method

.method private S(ZZLandroid/view/View;)V
    .locals 0
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p3, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p3, p2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_1

    .line 2
    iget p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->C:F

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->D:F

    :goto_0
    invoke-virtual {p3, p2}, Landroid/view/View;->setAlpha(F)V

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    .line 3
    :goto_1
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private T()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->J()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:Z

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->G:Lcom/google/android/exoplayer2/v1;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/v1;->A0()Lcom/google/android/exoplayer2/s2;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-interface {v0}, Lcom/google/android/exoplayer2/v1;->K()Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x4

    .line 5
    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/v1;->t0(I)Z

    move-result v3

    .line 6
    invoke-interface {v0}, Lcom/google/android/exoplayer2/v1;->j0()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r:Lcom/google/android/exoplayer2/s2$d;

    invoke-virtual {v2, v4, v5}, Lcom/google/android/exoplayer2/s2;->r(ILcom/google/android/exoplayer2/s2$d;)Lcom/google/android/exoplayer2/s2$d;

    const/4 v2, 0x1

    if-nez v3, :cond_2

    .line 7
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r:Lcom/google/android/exoplayer2/s2$d;

    .line 8
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/s2$d;->j()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x6

    .line 9
    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/v1;->t0(I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-eqz v3, :cond_3

    .line 10
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:Lcom/google/android/exoplayer2/j;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/j;->h()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    if-eqz v3, :cond_4

    .line 11
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:Lcom/google/android/exoplayer2/j;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/j;->l()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    .line 12
    :goto_3
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r:Lcom/google/android/exoplayer2/s2$d;

    .line 13
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/s2$d;->j()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r:Lcom/google/android/exoplayer2/s2$d;

    iget-boolean v7, v7, Lcom/google/android/exoplayer2/s2$d;->i:Z

    if-nez v7, :cond_6

    :cond_5
    const/4 v7, 0x5

    .line 14
    invoke-interface {v0, v7}, Lcom/google/android/exoplayer2/v1;->t0(I)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    move v0, v1

    move v1, v4

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 15
    :goto_4
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->T:Z

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c:Landroid/view/View;

    invoke-direct {p0, v2, v1, v4}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->S(ZZLandroid/view/View;)V

    .line 16
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->R:Z

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h:Landroid/view/View;

    invoke-direct {p0, v1, v5, v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->S(ZZLandroid/view/View;)V

    .line 17
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->S:Z

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g:Landroid/view/View;

    invoke-direct {p0, v1, v6, v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->S(ZZLandroid/view/View;)V

    .line 18
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->U:Z

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d:Landroid/view/View;

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->S(ZZLandroid/view/View;)V

    .line 19
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n:Lcom/google/android/exoplayer2/ui/u0;

    if-eqz v0, :cond_9

    .line 20
    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/ui/u0;->setEnabled(Z)V

    :cond_9
    :goto_5
    return-void
.end method

.method private U()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->J()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:Z

    if-nez v0, :cond_0

    goto :goto_4

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->P()Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e:Landroid/view/View;

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v1, v4

    .line 5
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e:Landroid/view/View;

    if-eqz v0, :cond_2

    const/16 v6, 0x8

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 6
    :goto_2
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f:Landroid/view/View;

    if-eqz v5, :cond_6

    if-nez v0, :cond_4

    .line 7
    invoke-virtual {v5}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    or-int/2addr v1, v3

    .line 8
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f:Landroid/view/View;

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    :cond_5
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    if-eqz v1, :cond_7

    .line 9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L()V

    :cond_7
    :goto_4
    return-void
.end method

.method private V()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->J()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->G:Lcom/google/android/exoplayer2/v1;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->y1:J

    invoke-interface {v0}, Lcom/google/android/exoplayer2/v1;->o1()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 4
    iget-wide v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->y1:J

    invoke-interface {v0}, Lcom/google/android/exoplayer2/v1;->I1()J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_0

    :cond_1
    move-wide v3, v1

    .line 5
    :goto_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->N:Z

    if-nez v6, :cond_2

    .line 6
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o:Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p:Ljava/util/Formatter;

    invoke-static {v6, v7, v1, v2}, Lcom/google/android/exoplayer2/util/z0;->n0(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :cond_2
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n:Lcom/google/android/exoplayer2/ui/u0;

    if-eqz v5, :cond_3

    .line 8
    invoke-interface {v5, v1, v2}, Lcom/google/android/exoplayer2/ui/u0;->setPosition(J)V

    .line 9
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n:Lcom/google/android/exoplayer2/ui/u0;

    invoke-interface {v5, v3, v4}, Lcom/google/android/exoplayer2/ui/u0;->setBufferedPosition(J)V

    .line 10
    :cond_3
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->I:Lcom/google/android/exoplayer2/ui/PlayerControlView$c;

    if-eqz v5, :cond_4

    .line 11
    invoke-interface {v5, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/ui/PlayerControlView$c;->a(JJ)V

    .line 12
    :cond_4
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->s:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v3, 0x1

    if-nez v0, :cond_5

    const/4 v4, 0x1

    goto :goto_1

    .line 13
    :cond_5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/v1;->c()I

    move-result v4

    :goto_1
    const-wide/16 v5, 0x3e8

    if-eqz v0, :cond_8

    .line 14
    invoke-interface {v0}, Lcom/google/android/exoplayer2/v1;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 15
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n:Lcom/google/android/exoplayer2/ui/u0;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Lcom/google/android/exoplayer2/ui/u0;->getPreferredUpdateDelay()J

    move-result-wide v3

    goto :goto_2

    :cond_6
    move-wide v3, v5

    .line 16
    :goto_2
    rem-long/2addr v1, v5

    sub-long v1, v5, v1

    .line 17
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 18
    invoke-interface {v0}, Lcom/google/android/exoplayer2/v1;->e()Lcom/google/android/exoplayer2/t1;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/t1;->a:F

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_7

    long-to-float v1, v1

    div-float/2addr v1, v0

    float-to-long v5, v1

    :cond_7
    move-wide v7, v5

    .line 19
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->P:I

    int-to-long v9, v0

    const-wide/16 v11, 0x3e8

    invoke-static/range {v7 .. v12}, Lcom/google/android/exoplayer2/util/z0;->u(JJJ)J

    move-result-wide v0

    .line 20
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->s:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_8
    const/4 v0, 0x4

    if-eq v4, v0, :cond_9

    if-eq v4, v3, :cond_9

    .line 21
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->s:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v5, v6}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    :goto_3
    return-void
.end method

.method private W()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->J()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->Q:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 3
    invoke-direct {p0, v2, v2, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->S(ZZLandroid/view/View;)V

    return-void

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->G:Lcom/google/android/exoplayer2/v1;

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 5
    invoke-direct {p0, v3, v2, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->S(ZZLandroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 8
    :cond_2
    invoke-direct {p0, v3, v3, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->S(ZZLandroid/view/View;)V

    .line 9
    invoke-interface {v1}, Lcom/google/android/exoplayer2/v1;->k()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 16
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method private X()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->J()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->G:Lcom/google/android/exoplayer2/v1;

    .line 3
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->V:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 4
    invoke-direct {p0, v3, v3, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->S(ZZLandroid/view/View;)V

    goto :goto_2

    :cond_1
    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 5
    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->S(ZZLandroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 8
    :cond_2
    invoke-direct {p0, v2, v2, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->S(ZZLandroid/view/View;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j:Landroid/widget/ImageView;

    .line 10
    invoke-interface {v1}, Lcom/google/android/exoplayer2/v1;->H1()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->A:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->B:Landroid/graphics/drawable/Drawable;

    .line 11
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j:Landroid/widget/ImageView;

    .line 13
    invoke-interface {v1}, Lcom/google/android/exoplayer2/v1;->H1()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 14
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->E:Ljava/lang/String;

    goto :goto_1

    .line 15
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->F:Ljava/lang/String;

    .line 16
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private Y()V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->G:Lcom/google/android/exoplayer2/v1;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 3
    invoke-interface {v1}, Lcom/google/android/exoplayer2/v1;->A0()Lcom/google/android/exoplayer2/s2;

    move-result-object v2

    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r:Lcom/google/android/exoplayer2/s2$d;

    invoke-static {v2, v5}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->A(Lcom/google/android/exoplayer2/s2;Lcom/google/android/exoplayer2/s2$d;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->M:Z

    const-wide/16 v5, 0x0

    .line 4
    iput-wide v5, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->y1:J

    .line 5
    invoke-interface {v1}, Lcom/google/android/exoplayer2/v1;->A0()Lcom/google/android/exoplayer2/s2;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v7

    if-nez v7, :cond_e

    .line 7
    invoke-interface {v1}, Lcom/google/android/exoplayer2/v1;->j0()I

    move-result v1

    .line 8
    iget-boolean v7, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->M:Z

    if-eqz v7, :cond_2

    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    move v8, v1

    :goto_1
    if-eqz v7, :cond_3

    .line 9
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/s2;->u()I

    move-result v7

    sub-int/2addr v7, v4

    goto :goto_2

    :cond_3
    move v7, v1

    :goto_2
    move-wide v9, v5

    const/4 v11, 0x0

    :goto_3
    if-gt v8, v7, :cond_d

    if-ne v8, v1, :cond_4

    .line 10
    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/i;->d(J)J

    move-result-wide v12

    iput-wide v12, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->y1:J

    .line 11
    :cond_4
    iget-object v12, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r:Lcom/google/android/exoplayer2/s2$d;

    invoke-virtual {v2, v8, v12}, Lcom/google/android/exoplayer2/s2;->r(ILcom/google/android/exoplayer2/s2$d;)Lcom/google/android/exoplayer2/s2$d;

    .line 12
    iget-object v12, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r:Lcom/google/android/exoplayer2/s2$d;

    iget-wide v13, v12, Lcom/google/android/exoplayer2/s2$d;->n:J

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v17, v13, v15

    if-nez v17, :cond_5

    .line 13
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->M:Z

    xor-int/2addr v1, v4

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    goto/16 :goto_8

    .line 14
    :cond_5
    iget v12, v12, Lcom/google/android/exoplayer2/s2$d;->o:I

    :goto_4
    iget-object v13, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r:Lcom/google/android/exoplayer2/s2$d;

    iget v14, v13, Lcom/google/android/exoplayer2/s2$d;->p:I

    if-gt v12, v14, :cond_c

    .line 15
    iget-object v13, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->q:Lcom/google/android/exoplayer2/s2$b;

    invoke-virtual {v2, v12, v13}, Lcom/google/android/exoplayer2/s2;->j(ILcom/google/android/exoplayer2/s2$b;)Lcom/google/android/exoplayer2/s2$b;

    .line 16
    iget-object v13, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->q:Lcom/google/android/exoplayer2/s2$b;

    invoke-virtual {v13}, Lcom/google/android/exoplayer2/s2$b;->f()I

    move-result v13

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v13, :cond_b

    .line 17
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->q:Lcom/google/android/exoplayer2/s2$b;

    invoke-virtual {v4, v14}, Lcom/google/android/exoplayer2/s2$b;->i(I)J

    move-result-wide v18

    const-wide/high16 v20, -0x8000000000000000L

    cmp-long v4, v18, v20

    if-nez v4, :cond_7

    .line 18
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->q:Lcom/google/android/exoplayer2/s2$b;

    iget-wide v3, v4, Lcom/google/android/exoplayer2/s2$b;->d:J

    cmp-long v18, v3, v15

    if-nez v18, :cond_6

    goto :goto_7

    :cond_6
    move-wide/from16 v18, v3

    .line 19
    :cond_7
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->q:Lcom/google/android/exoplayer2/s2$b;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/s2$b;->q()J

    move-result-wide v3

    add-long v18, v18, v3

    cmp-long v3, v18, v5

    if-ltz v3, :cond_a

    .line 20
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b1:[J

    array-length v4, v3

    if-ne v11, v4, :cond_9

    .line 21
    array-length v4, v3

    if-nez v4, :cond_8

    const/4 v4, 0x1

    goto :goto_6

    :cond_8
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x2

    .line 22
    :goto_6
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b1:[J

    .line 23
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g1:[Z

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g1:[Z

    .line 24
    :cond_9
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b1:[J

    add-long v18, v9, v18

    invoke-static/range {v18 .. v19}, Lcom/google/android/exoplayer2/i;->d(J)J

    move-result-wide v18

    aput-wide v18, v3, v11

    .line 25
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g1:[Z

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->q:Lcom/google/android/exoplayer2/s2$b;

    invoke-virtual {v4, v14}, Lcom/google/android/exoplayer2/s2$b;->r(I)Z

    move-result v4

    aput-boolean v4, v3, v11

    add-int/lit8 v11, v11, 0x1

    :cond_a
    :goto_7
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x1

    goto :goto_5

    :cond_b
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x1

    goto :goto_4

    .line 26
    :cond_c
    iget-wide v3, v13, Lcom/google/android/exoplayer2/s2$d;->n:J

    add-long/2addr v9, v3

    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x1

    goto/16 :goto_3

    :cond_d
    :goto_8
    move-wide v5, v9

    goto :goto_9

    :cond_e
    const/4 v11, 0x0

    .line 27
    :goto_9
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/i;->d(J)J

    move-result-wide v1

    .line 28
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l:Landroid/widget/TextView;

    if-eqz v3, :cond_f

    .line 29
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o:Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p:Ljava/util/Formatter;

    invoke-static {v4, v5, v1, v2}, Lcom/google/android/exoplayer2/util/z0;->n0(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    :cond_f
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n:Lcom/google/android/exoplayer2/ui/u0;

    if-eqz v3, :cond_11

    .line 31
    invoke-interface {v3, v1, v2}, Lcom/google/android/exoplayer2/ui/u0;->setDuration(J)V

    .line 32
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p1:[J

    array-length v1, v1

    add-int v2, v11, v1

    .line 33
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b1:[J

    array-length v4, v3

    if-le v2, v4, :cond_10

    .line 34
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b1:[J

    .line 35
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g1:[Z

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g1:[Z

    .line 36
    :cond_10
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p1:[J

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b1:[J

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->x1:[Z

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g1:[Z

    invoke-static {v3, v5, v4, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n:Lcom/google/android/exoplayer2/ui/u0;

    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b1:[J

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g1:[Z

    invoke-interface {v1, v3, v4, v2}, Lcom/google/android/exoplayer2/ui/u0;->c([J[ZI)V

    .line 39
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->V()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->V()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->X()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/ui/PlayerControlView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->N:Z

    return p1
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->T()V

    return-void
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->Y()V

    return-void
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d:Landroid/view/View;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/j;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:Lcom/google/android/exoplayer2/j;

    return-object p0
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c:Landroid/view/View;

    return-object p0
.end method

.method static synthetic i(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g:Landroid/view/View;

    return-object p0
.end method

.method static synthetic j(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h:Landroid/view/View;

    return-object p0
.end method

.method static synthetic k(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e:Landroid/view/View;

    return-object p0
.end method

.method static synthetic l(Lcom/google/android/exoplayer2/ui/PlayerControlView;Lcom/google/android/exoplayer2/v1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->D(Lcom/google/android/exoplayer2/v1;)V

    return-void
.end method

.method static synthetic m(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic n(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f:Landroid/view/View;

    return-object p0
.end method

.method static synthetic o(Lcom/google/android/exoplayer2/ui/PlayerControlView;Lcom/google/android/exoplayer2/v1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->C(Lcom/google/android/exoplayer2/v1;)V

    return-void
.end method

.method static synthetic p(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic q(Lcom/google/android/exoplayer2/ui/PlayerControlView;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->Q:I

    return p0
.end method

.method static synthetic r(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic s(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Ljava/lang/StringBuilder;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic t(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Ljava/util/Formatter;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p:Ljava/util/Formatter;

    return-object p0
.end method

.method static synthetic u(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/v1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->G:Lcom/google/android/exoplayer2/v1;

    return-object p0
.end method

.method static synthetic v(Lcom/google/android/exoplayer2/ui/PlayerControlView;Lcom/google/android/exoplayer2/v1;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->N(Lcom/google/android/exoplayer2/v1;J)V

    return-void
.end method

.method static synthetic w(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->U()V

    return-void
.end method

.method static synthetic x(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->V()V

    return-void
.end method

.method static synthetic y(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->W()V

    return-void
.end method


# virtual methods
.method public B(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->G:Lcom/google/android/exoplayer2/v1;

    if-eqz v1, :cond_9

    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->I(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_8

    const/16 v2, 0x5a

    if-ne v0, v2, :cond_1

    .line 5
    invoke-interface {v1}, Lcom/google/android/exoplayer2/v1;->c()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_8

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:Lcom/google/android/exoplayer2/j;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/j;->g(Lcom/google/android/exoplayer2/v1;)Z

    goto :goto_0

    :cond_1
    const/16 v2, 0x59

    if-ne v0, v2, :cond_2

    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:Lcom/google/android/exoplayer2/j;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/j;->b(Lcom/google/android/exoplayer2/v1;)Z

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_8

    const/16 p1, 0x4f

    if-eq v0, p1, :cond_7

    const/16 p1, 0x55

    if-eq v0, p1, :cond_7

    const/16 p1, 0x57

    if-eq v0, p1, :cond_6

    const/16 p1, 0x58

    if-eq v0, p1, :cond_5

    const/16 p1, 0x7e

    if-eq v0, p1, :cond_4

    const/16 p1, 0x7f

    if-eq v0, p1, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->C(Lcom/google/android/exoplayer2/v1;)V

    goto :goto_0

    .line 10
    :cond_4
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->D(Lcom/google/android/exoplayer2/v1;)V

    goto :goto_0

    .line 11
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:Lcom/google/android/exoplayer2/j;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/j;->j(Lcom/google/android/exoplayer2/v1;)Z

    goto :goto_0

    .line 12
    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:Lcom/google/android/exoplayer2/j;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/j;->k(Lcom/google/android/exoplayer2/v1;)Z

    goto :goto_0

    .line 13
    :cond_7
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->E(Lcom/google/android/exoplayer2/v1;)V

    :cond_8
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_9
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public G()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ui/PlayerControlView$d;

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView$d;->d(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->s:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->t:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->W:J

    :cond_1
    return-void
.end method

.method public J()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public K(Lcom/google/android/exoplayer2/ui/PlayerControlView$d;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public O([J[Z)V
    .locals 3
    .param p1    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [J

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p1:[J

    new-array p1, v0, [Z

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->x1:[Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Z

    .line 4
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p1:[J

    .line 6
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->x1:[Z

    .line 7
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->Y()V

    return-void
.end method

.method public Q()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->J()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ui/PlayerControlView$d;

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView$d;->d(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->R()V

    .line 6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L()V

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->B(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->t:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H()V

    .line 5
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getPlayer()Lcom/google/android/exoplayer2/v1;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->G:Lcom/google/android/exoplayer2/v1;

    return-object v0
.end method

.method public getRepeatToggleModes()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->Q:I

    return v0
.end method

.method public getShowShuffleButton()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->V:Z

    return v0
.end method

.method public getShowTimeoutMs()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->O:I

    return v0
.end method

.method public getShowVrButton()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->k:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:Z

    .line 3
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->W:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->G()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->t:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->J()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H()V

    .line 9
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->R()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:Z

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->s:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->t:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setControlDispatcher(Lcom/google/android/exoplayer2/j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:Lcom/google/android/exoplayer2/j;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:Lcom/google/android/exoplayer2/j;

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->T()V

    :cond_0
    return-void
.end method

.method public setFastForwardIncrementMs(I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:Lcom/google/android/exoplayer2/j;

    instance-of v1, v0, Lcom/google/android/exoplayer2/k;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/google/android/exoplayer2/k;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/k;->q(J)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->T()V

    :cond_0
    return-void
.end method

.method public setPlaybackPreparer(Lcom/google/android/exoplayer2/u1;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/u1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->J:Lcom/google/android/exoplayer2/u1;

    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/v1;)V
    .locals 4
    .param p1    # Lcom/google/android/exoplayer2/v1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->B0()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 3
    :cond_2
    :goto_1
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->G:Lcom/google/android/exoplayer2/v1;

    if-ne v0, p1, :cond_3

    return-void

    :cond_3
    if-eqz v0, :cond_4

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView$b;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/v1;->g0(Lcom/google/android/exoplayer2/v1$f;)V

    .line 6
    :cond_4
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->G:Lcom/google/android/exoplayer2/v1;

    if-eqz p1, :cond_5

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView$b;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/v1;->c1(Lcom/google/android/exoplayer2/v1$f;)V

    .line 8
    :cond_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->R()V

    return-void
.end method

.method public setProgressUpdateListener(Lcom/google/android/exoplayer2/ui/PlayerControlView$c;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/ui/PlayerControlView$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->I:Lcom/google/android/exoplayer2/ui/PlayerControlView$c;

    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->Q:I

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->G:Lcom/google/android/exoplayer2/v1;

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/v1;->k()I

    move-result v0

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:Lcom/google/android/exoplayer2/j;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->G:Lcom/google/android/exoplayer2/v1;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/j;->e(Lcom/google/android/exoplayer2/v1;I)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    if-ne v0, v1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:Lcom/google/android/exoplayer2/j;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->G:Lcom/google/android/exoplayer2/v1;

    invoke-interface {p1, v0, v2}, Lcom/google/android/exoplayer2/j;->e(Lcom/google/android/exoplayer2/v1;I)Z

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    if-ne v0, v2, :cond_2

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:Lcom/google/android/exoplayer2/j;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->G:Lcom/google/android/exoplayer2/v1;

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/j;->e(Lcom/google/android/exoplayer2/v1;I)Z

    .line 7
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->W()V

    return-void
.end method

.method public setRewindIncrementMs(I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:Lcom/google/android/exoplayer2/j;

    instance-of v1, v0, Lcom/google/android/exoplayer2/k;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/google/android/exoplayer2/k;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/k;->r(J)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->T()V

    :cond_0
    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->S:Z

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->T()V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L:Z

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->Y()V

    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->U:Z

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->T()V

    return-void
.end method

.method public setShowPreviousButton(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->T:Z

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->T()V

    return-void
.end method

.method public setShowRewindButton(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->R:Z

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->T()V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->V:Z

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->X()V

    return-void
.end method

.method public setShowTimeoutMs(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->O:I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->J()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H()V

    :cond_0
    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->k:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 2
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setTimeBarMinUpdateInterval(I)V
    .locals 2

    const/16 v0, 0x10

    const/16 v1, 0x3e8

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/z0;->t(III)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->P:I

    return-void
.end method

.method public setVrButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->k:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->getShowVrButton()Z

    move-result v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->k:Landroid/view/View;

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->S(ZZLandroid/view/View;)V

    :cond_1
    return-void
.end method

.method public z(Lcom/google/android/exoplayer2/ui/PlayerControlView$d;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
