.class public final Lcom/google/android/exoplayer2/f1;
.super Ljava/lang/Object;
.source "MediaMetadata.java"

# interfaces
.implements Lcom/google/android/exoplayer2/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/f1$c;,
        Lcom/google/android/exoplayer2/f1$b;
    }
.end annotation


# static fields
.field private static final A:I = 0x0

.field private static final B:I = 0x1

.field private static final C:I = 0x2

.field private static final D:I = 0x3

.field private static final E:I = 0x4

.field private static final F:I = 0x5

.field private static final G:I = 0x6

.field private static final H:I = 0x7

.field private static final I:I = 0x8

.field private static final J:I = 0x9

.field private static final K:I = 0xa

.field private static final L:I = 0xb

.field private static final M:I = 0xc

.field private static final N:I = 0xd

.field private static final O:I = 0xe

.field private static final P:I = 0xf

.field private static final Q:I = 0x10

.field private static final R:I = 0x3e8

.field public static final S:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lcom/google/android/exoplayer2/f1;",
            ">;"
        }
    .end annotation
.end field

.field public static final s:I = 0x0

.field public static final t:I = 0x1

.field public static final u:I = 0x2

.field public static final v:I = 0x3

.field public static final w:I = 0x4

.field public static final x:I = 0x5

.field public static final y:I = 0x6

.field public static final z:Lcom/google/android/exoplayer2/f1;


# instance fields
.field public final a:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final f:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final g:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final h:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final i:Lcom/google/android/exoplayer2/c2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final j:Lcom/google/android/exoplayer2/c2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final k:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final l:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final m:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final n:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final o:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final p:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final q:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final r:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/f1$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/f1$b;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/f1$b;->s()Lcom/google/android/exoplayer2/f1;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/f1;->z:Lcom/google/android/exoplayer2/f1;

    .line 2
    sget-object v0, Lcom/google/android/exoplayer2/e1;->a:Lcom/google/android/exoplayer2/e1;

    sput-object v0, Lcom/google/android/exoplayer2/f1;->S:Lcom/google/android/exoplayer2/h$a;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/f1$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/f1$b;->a(Lcom/google/android/exoplayer2/f1$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/f1;->a:Ljava/lang/CharSequence;

    .line 4
    invoke-static {p1}, Lcom/google/android/exoplayer2/f1$b;->k(Lcom/google/android/exoplayer2/f1$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/f1;->b:Ljava/lang/CharSequence;

    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/f1$b;->l(Lcom/google/android/exoplayer2/f1$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/f1;->c:Ljava/lang/CharSequence;

    .line 6
    invoke-static {p1}, Lcom/google/android/exoplayer2/f1$b;->m(Lcom/google/android/exoplayer2/f1$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/f1;->d:Ljava/lang/CharSequence;

    .line 7
    invoke-static {p1}, Lcom/google/android/exoplayer2/f1$b;->n(Lcom/google/android/exoplayer2/f1$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/f1;->e:Ljava/lang/CharSequence;

    .line 8
    invoke-static {p1}, Lcom/google/android/exoplayer2/f1$b;->o(Lcom/google/android/exoplayer2/f1$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/f1;->f:Ljava/lang/CharSequence;

    .line 9
    invoke-static {p1}, Lcom/google/android/exoplayer2/f1$b;->p(Lcom/google/android/exoplayer2/f1$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/f1;->g:Ljava/lang/CharSequence;

    .line 10
    invoke-static {p1}, Lcom/google/android/exoplayer2/f1$b;->q(Lcom/google/android/exoplayer2/f1$b;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/f1;->h:Landroid/net/Uri;

    .line 11
    invoke-static {p1}, Lcom/google/android/exoplayer2/f1$b;->r(Lcom/google/android/exoplayer2/f1$b;)Lcom/google/android/exoplayer2/c2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/f1;->i:Lcom/google/android/exoplayer2/c2;

    .line 12
    invoke-static {p1}, Lcom/google/android/exoplayer2/f1$b;->b(Lcom/google/android/exoplayer2/f1$b;)Lcom/google/android/exoplayer2/c2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/f1;->j:Lcom/google/android/exoplayer2/c2;

    .line 13
    invoke-static {p1}, Lcom/google/android/exoplayer2/f1$b;->c(Lcom/google/android/exoplayer2/f1$b;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/f1;->k:[B

    .line 14
    invoke-static {p1}, Lcom/google/android/exoplayer2/f1$b;->d(Lcom/google/android/exoplayer2/f1$b;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/f1;->l:Landroid/net/Uri;

    .line 15
    invoke-static {p1}, Lcom/google/android/exoplayer2/f1$b;->e(Lcom/google/android/exoplayer2/f1$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/f1;->m:Ljava/lang/Integer;

    .line 16
    invoke-static {p1}, Lcom/google/android/exoplayer2/f1$b;->f(Lcom/google/android/exoplayer2/f1$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/f1;->n:Ljava/lang/Integer;

    .line 17
    invoke-static {p1}, Lcom/google/android/exoplayer2/f1$b;->g(Lcom/google/android/exoplayer2/f1$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/f1;->o:Ljava/lang/Integer;

    .line 18
    invoke-static {p1}, Lcom/google/android/exoplayer2/f1$b;->h(Lcom/google/android/exoplayer2/f1$b;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/f1;->p:Ljava/lang/Boolean;

    .line 19
    invoke-static {p1}, Lcom/google/android/exoplayer2/f1$b;->i(Lcom/google/android/exoplayer2/f1$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/f1;->q:Ljava/lang/Integer;

    .line 20
    invoke-static {p1}, Lcom/google/android/exoplayer2/f1$b;->j(Lcom/google/android/exoplayer2/f1$b;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/f1;->r:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/f1$b;Lcom/google/android/exoplayer2/f1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/f1;-><init>(Lcom/google/android/exoplayer2/f1$b;)V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/f1;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/f1;->c(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/f1;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/f1;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/f1$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/f1$b;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/f1$b;->I(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/f1$b;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-static {v2}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/f1$b;->x(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/f1$b;

    move-result-object v1

    const/4 v2, 0x2

    .line 4
    invoke-static {v2}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/f1$b;->w(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/f1$b;

    move-result-object v1

    const/4 v2, 0x3

    .line 5
    invoke-static {v2}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/f1$b;->v(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/f1$b;

    move-result-object v1

    const/4 v2, 0x4

    .line 6
    invoke-static {v2}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/f1$b;->B(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/f1$b;

    move-result-object v1

    const/4 v2, 0x5

    .line 7
    invoke-static {v2}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/f1$b;->H(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/f1$b;

    move-result-object v1

    const/4 v2, 0x6

    .line 8
    invoke-static {v2}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/f1$b;->A(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/f1$b;

    move-result-object v1

    const/4 v2, 0x7

    .line 9
    invoke-static {v2}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/f1$b;->F(Landroid/net/Uri;)Lcom/google/android/exoplayer2/f1$b;

    move-result-object v1

    const/16 v2, 0xa

    .line 10
    invoke-static {v2}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/f1$b;->y([B)Lcom/google/android/exoplayer2/f1$b;

    move-result-object v1

    const/16 v2, 0xb

    .line 11
    invoke-static {v2}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/f1$b;->z(Landroid/net/Uri;)Lcom/google/android/exoplayer2/f1$b;

    move-result-object v1

    const/16 v2, 0x3e8

    .line 12
    invoke-static {v2}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/f1$b;->C(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/f1$b;

    const/16 v1, 0x8

    .line 13
    invoke-static {v1}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14
    invoke-static {v1}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 15
    sget-object v2, Lcom/google/android/exoplayer2/c2;->h:Lcom/google/android/exoplayer2/h$a;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/h$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/h;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/c2;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/f1$b;->L(Lcom/google/android/exoplayer2/c2;)Lcom/google/android/exoplayer2/f1$b;

    :cond_0
    const/16 v1, 0x9

    .line 16
    invoke-static {v1}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 17
    invoke-static {v1}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 18
    sget-object v2, Lcom/google/android/exoplayer2/c2;->h:Lcom/google/android/exoplayer2/h$a;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/h$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/h;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/c2;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/f1$b;->G(Lcom/google/android/exoplayer2/c2;)Lcom/google/android/exoplayer2/f1$b;

    :cond_1
    const/16 v1, 0xc

    .line 19
    invoke-static {v1}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 20
    invoke-static {v1}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/f1$b;->K(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/f1$b;

    :cond_2
    const/16 v1, 0xd

    .line 21
    invoke-static {v1}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 22
    invoke-static {v1}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/f1$b;->J(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/f1$b;

    :cond_3
    const/16 v1, 0xe

    .line 23
    invoke-static {v1}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 24
    invoke-static {v1}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/f1$b;->D(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/f1$b;

    :cond_4
    const/16 v1, 0xf

    .line 25
    invoke-static {v1}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 26
    invoke-static {v1}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/f1$b;->E(Ljava/lang/Boolean;)Lcom/google/android/exoplayer2/f1$b;

    :cond_5
    const/16 v1, 0x10

    .line 27
    invoke-static {v1}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 28
    invoke-static {v1}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/f1$b;->M(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/f1$b;

    .line 29
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/f1$b;->s()Lcom/google/android/exoplayer2/f1;

    move-result-object p0

    return-object p0
.end method

.method private static d(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Lcom/google/android/exoplayer2/f1$b;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/f1$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/f1$b;-><init>(Lcom/google/android/exoplayer2/f1;Lcom/google/android/exoplayer2/f1$a;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lcom/google/android/exoplayer2/f1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/f1;

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/f1;->a:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/f1;->a:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/z0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/f1;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/f1;->b:Ljava/lang/CharSequence;

    .line 4
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/z0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/f1;->c:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/f1;->c:Ljava/lang/CharSequence;

    .line 5
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/z0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/f1;->d:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/f1;->d:Ljava/lang/CharSequence;

    .line 6
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/z0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/f1;->e:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/f1;->e:Ljava/lang/CharSequence;

    .line 7
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/z0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/f1;->f:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/f1;->f:Ljava/lang/CharSequence;

    .line 8
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/z0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/f1;->g:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/f1;->g:Ljava/lang/CharSequence;

    .line 9
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/z0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/f1;->h:Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/exoplayer2/f1;->h:Landroid/net/Uri;

    .line 10
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/z0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/f1;->i:Lcom/google/android/exoplayer2/c2;

    iget-object v3, p1, Lcom/google/android/exoplayer2/f1;->i:Lcom/google/android/exoplayer2/c2;

    .line 11
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/z0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/f1;->j:Lcom/google/android/exoplayer2/c2;

    iget-object v3, p1, Lcom/google/android/exoplayer2/f1;->j:Lcom/google/android/exoplayer2/c2;

    .line 12
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/z0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/f1;->k:[B

    iget-object v3, p1, Lcom/google/android/exoplayer2/f1;->k:[B

    .line 13
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/f1;->l:Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/exoplayer2/f1;->l:Landroid/net/Uri;

    .line 14
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/z0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/f1;->m:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/f1;->m:Ljava/lang/Integer;

    .line 15
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/z0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/f1;->n:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/f1;->n:Ljava/lang/Integer;

    .line 16
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/z0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/f1;->o:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/f1;->o:Ljava/lang/Integer;

    .line 17
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/z0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/f1;->p:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/exoplayer2/f1;->p:Ljava/lang/Boolean;

    .line 18
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/z0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/f1;->q:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/google/android/exoplayer2/f1;->q:Ljava/lang/Integer;

    .line 19
    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/util/z0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/google/android/exoplayer2/f1;->a:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/f1;->b:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/f1;->c:Ljava/lang/CharSequence;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/f1;->d:Ljava/lang/CharSequence;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/f1;->e:Ljava/lang/CharSequence;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/f1;->f:Ljava/lang/CharSequence;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/f1;->g:Ljava/lang/CharSequence;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/f1;->h:Landroid/net/Uri;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/f1;->i:Lcom/google/android/exoplayer2/c2;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/f1;->j:Lcom/google/android/exoplayer2/c2;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/f1;->k:[B

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/f1;->l:Landroid/net/Uri;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/f1;->m:Ljava/lang/Integer;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/f1;->n:Ljava/lang/Integer;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/f1;->o:Ljava/lang/Integer;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/f1;->p:Ljava/lang/Boolean;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/f1;->q:Ljava/lang/Integer;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 3
    invoke-static {v0}, Lcom/google/common/base/w;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/f1;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/f1;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    .line 4
    invoke-static {v1}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/f1;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v1, 0x3

    .line 5
    invoke-static {v1}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/f1;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v1, 0x4

    .line 6
    invoke-static {v1}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/f1;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v1, 0x5

    .line 7
    invoke-static {v1}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/f1;->f:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v1, 0x6

    .line 8
    invoke-static {v1}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/f1;->g:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v1, 0x7

    .line 9
    invoke-static {v1}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/f1;->h:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v1, 0xa

    .line 10
    invoke-static {v1}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/f1;->k:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/16 v1, 0xb

    .line 11
    invoke-static {v1}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/f1;->l:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 12
    iget-object v1, p0, Lcom/google/android/exoplayer2/f1;->i:Lcom/google/android/exoplayer2/c2;

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    .line 13
    invoke-static {v1}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/f1;->i:Lcom/google/android/exoplayer2/c2;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/h;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/f1;->j:Lcom/google/android/exoplayer2/c2;

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    .line 15
    invoke-static {v1}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/f1;->j:Lcom/google/android/exoplayer2/c2;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/h;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 16
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/f1;->m:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const/16 v1, 0xc

    .line 17
    invoke-static {v1}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/f1;->m:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 18
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/f1;->n:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    const/16 v1, 0xd

    .line 19
    invoke-static {v1}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/f1;->n:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/f1;->o:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    const/16 v1, 0xe

    .line 21
    invoke-static {v1}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/f1;->o:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 22
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/f1;->p:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    const/16 v1, 0xf

    .line 23
    invoke-static {v1}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/f1;->p:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 24
    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/f1;->q:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    const/16 v1, 0x10

    .line 25
    invoke-static {v1}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/f1;->q:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 26
    :cond_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/f1;->r:Landroid/os/Bundle;

    if-eqz v1, :cond_7

    const/16 v1, 0x3e8

    .line 27
    invoke-static {v1}, Lcom/google/android/exoplayer2/f1;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/f1;->r:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_7
    return-object v0
.end method
