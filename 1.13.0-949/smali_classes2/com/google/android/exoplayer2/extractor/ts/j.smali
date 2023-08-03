.class public final Lcom/google/android/exoplayer2/extractor/ts/j;
.super Ljava/lang/Object;
.source "DefaultTsPayloadReaderFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/i0$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ts/j$a;
    }
.end annotation


# static fields
.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x4

.field public static final f:I = 0x8

.field public static final g:I = 0x10

.field public static final h:I = 0x20

.field public static final i:I = 0x40

.field private static final j:I = 0x86


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/j;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/j;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/j;->a:I

    .line 5
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/j;->b:Ljava/util/List;

    return-void
.end method

.method private c(Lcom/google/android/exoplayer2/extractor/ts/i0$b;)Lcom/google/android/exoplayer2/extractor/ts/d0;
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/d0;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/j;->e(Lcom/google/android/exoplayer2/extractor/ts/i0$b;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/extractor/ts/d0;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private d(Lcom/google/android/exoplayer2/extractor/ts/i0$b;)Lcom/google/android/exoplayer2/extractor/ts/k0;
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/k0;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/j;->e(Lcom/google/android/exoplayer2/extractor/ts/i0$b;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/extractor/ts/k0;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private e(Lcom/google/android/exoplayer2/extractor/ts/i0$b;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/ts/i0$b;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x20

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/j;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/j;->b:Ljava/util/List;

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/util/h0;

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/ts/i0$b;->d:[B

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/util/h0;-><init>([B)V

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/j;->b:Ljava/util/List;

    .line 5
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->a()I

    move-result v1

    if-lez v1, :cond_6

    .line 6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->G()I

    move-result v1

    .line 7
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->G()I

    move-result v2

    .line 8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->e()I

    move-result v3

    add-int/2addr v3, v2

    const/16 v2, 0x86

    if-ne v1, v2, :cond_5

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->G()I

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_5

    const/4 v5, 0x3

    .line 11
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/h0;->D(I)Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->G()I

    move-result v6

    and-int/lit16 v7, v6, 0x80

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_2

    and-int/lit8 v6, v6, 0x3f

    const-string v9, "application/cea-708"

    goto :goto_3

    :cond_2
    const-string v9, "application/cea-608"

    const/4 v6, 0x1

    .line 13
    :goto_3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->G()I

    move-result v10

    int-to-byte v10, v10

    .line 14
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/h0;->T(I)V

    const/4 v11, 0x0

    if-eqz v7, :cond_4

    and-int/lit8 v7, v10, 0x40

    if-eqz v7, :cond_3

    goto :goto_4

    :cond_3
    const/4 v8, 0x0

    .line 15
    :goto_4
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/e;->b(Z)Ljava/util/List;

    move-result-object v11

    .line 16
    :cond_4
    new-instance v7, Lcom/google/android/exoplayer2/Format$b;

    invoke-direct {v7}, Lcom/google/android/exoplayer2/Format$b;-><init>()V

    .line 17
    invoke-virtual {v7, v9}, Lcom/google/android/exoplayer2/Format$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v7

    .line 18
    invoke-virtual {v7, v5}, Lcom/google/android/exoplayer2/Format$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v5

    .line 19
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/Format$b;->F(I)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v5

    .line 20
    invoke-virtual {v5, v11}, Lcom/google/android/exoplayer2/Format$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v5

    .line 21
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Format$b;->E()Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    .line 22
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 23
    :cond_5
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    goto :goto_0

    :cond_6
    return-object p1
.end method

.method private f(I)Z
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/j;->a:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/ts/i0;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method public b(ILcom/google/android/exoplayer2/extractor/ts/i0$b;)Lcom/google/android/exoplayer2/extractor/ts/i0;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_f

    const/4 v1, 0x3

    if-eq p1, v1, :cond_e

    const/4 v1, 0x4

    if-eq p1, v1, :cond_e

    const/16 v2, 0x15

    if-eq p1, v2, :cond_d

    const/16 v2, 0x1b

    const/4 v3, 0x0

    if-eq p1, v2, :cond_b

    const/16 v1, 0x24

    if-eq p1, v1, :cond_a

    const/16 v1, 0x59

    if-eq p1, v1, :cond_9

    const/16 v1, 0x8a

    if-eq p1, v1, :cond_8

    const/16 v1, 0xac

    if-eq p1, v1, :cond_7

    const/16 v1, 0x101

    if-eq p1, v1, :cond_6

    const/16 v1, 0x81

    if-eq p1, v1, :cond_5

    const/16 v1, 0x82

    if-eq p1, v1, :cond_4

    const/16 v1, 0x86

    if-eq p1, v1, :cond_2

    const/16 v1, 0x87

    if-eq p1, v1, :cond_5

    packed-switch p1, :pswitch_data_0

    return-object v3

    .line 1
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/j;->f(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/w;

    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/s;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ts/i0$b;->b:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/s;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1}, Lcom/google/android/exoplayer2/extractor/ts/w;-><init>(Lcom/google/android/exoplayer2/extractor/ts/m;)V

    :goto_0
    return-object v3

    .line 3
    :pswitch_1
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/w;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/o;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/extractor/ts/j;->d(Lcom/google/android/exoplayer2/extractor/ts/i0$b;)Lcom/google/android/exoplayer2/extractor/ts/k0;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/ts/o;-><init>(Lcom/google/android/exoplayer2/extractor/ts/k0;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/w;-><init>(Lcom/google/android/exoplayer2/extractor/ts/m;)V

    return-object p1

    .line 4
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/j;->f(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/w;

    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/i;

    const/4 v0, 0x0

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ts/i0$b;->b:Ljava/lang/String;

    invoke-direct {p1, v0, p2}, Lcom/google/android/exoplayer2/extractor/ts/i;-><init>(ZLjava/lang/String;)V

    invoke-direct {v3, p1}, Lcom/google/android/exoplayer2/extractor/ts/w;-><init>(Lcom/google/android/exoplayer2/extractor/ts/m;)V

    :goto_1
    return-object v3

    :cond_2
    const/16 p1, 0x10

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/j;->f(I)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 7
    :cond_3
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/c0;

    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/v;

    const-string p2, "application/x-scte35"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/v;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1}, Lcom/google/android/exoplayer2/extractor/ts/c0;-><init>(Lcom/google/android/exoplayer2/extractor/ts/b0;)V

    :goto_2
    return-object v3

    :cond_4
    const/16 p1, 0x40

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/j;->f(I)Z

    move-result p1

    if-nez p1, :cond_8

    return-object v3

    .line 9
    :cond_5
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/w;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/c;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ts/i0$b;->b:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/ts/c;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/w;-><init>(Lcom/google/android/exoplayer2/extractor/ts/m;)V

    return-object p1

    .line 10
    :cond_6
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/c0;

    new-instance p2, Lcom/google/android/exoplayer2/extractor/ts/v;

    const-string v0, "application/vnd.dvb.ait"

    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/extractor/ts/v;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/c0;-><init>(Lcom/google/android/exoplayer2/extractor/ts/b0;)V

    return-object p1

    .line 11
    :cond_7
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/w;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/f;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ts/i0$b;->b:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/ts/f;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/w;-><init>(Lcom/google/android/exoplayer2/extractor/ts/m;)V

    return-object p1

    .line 12
    :cond_8
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/w;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/k;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ts/i0$b;->b:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/ts/k;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/w;-><init>(Lcom/google/android/exoplayer2/extractor/ts/m;)V

    return-object p1

    .line 13
    :cond_9
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/w;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/l;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ts/i0$b;->c:Ljava/util/List;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/ts/l;-><init>(Ljava/util/List;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/w;-><init>(Lcom/google/android/exoplayer2/extractor/ts/m;)V

    return-object p1

    .line 14
    :cond_a
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/w;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/q;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/extractor/ts/j;->c(Lcom/google/android/exoplayer2/extractor/ts/i0$b;)Lcom/google/android/exoplayer2/extractor/ts/d0;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/ts/q;-><init>(Lcom/google/android/exoplayer2/extractor/ts/d0;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/w;-><init>(Lcom/google/android/exoplayer2/extractor/ts/m;)V

    return-object p1

    .line 15
    :cond_b
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/extractor/ts/j;->f(I)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_3

    .line 16
    :cond_c
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/w;

    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/p;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/extractor/ts/j;->c(Lcom/google/android/exoplayer2/extractor/ts/i0$b;)Lcom/google/android/exoplayer2/extractor/ts/d0;

    move-result-object p2

    const/4 v0, 0x1

    .line 17
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/j;->f(I)Z

    move-result v0

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/extractor/ts/j;->f(I)Z

    move-result v1

    invoke-direct {p1, p2, v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/p;-><init>(Lcom/google/android/exoplayer2/extractor/ts/d0;ZZ)V

    invoke-direct {v3, p1}, Lcom/google/android/exoplayer2/extractor/ts/w;-><init>(Lcom/google/android/exoplayer2/extractor/ts/m;)V

    :goto_3
    return-object v3

    .line 18
    :cond_d
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/w;

    new-instance p2, Lcom/google/android/exoplayer2/extractor/ts/r;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/extractor/ts/r;-><init>()V

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/w;-><init>(Lcom/google/android/exoplayer2/extractor/ts/m;)V

    return-object p1

    .line 19
    :cond_e
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/w;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/t;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ts/i0$b;->b:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/ts/t;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/w;-><init>(Lcom/google/android/exoplayer2/extractor/ts/m;)V

    return-object p1

    .line 20
    :cond_f
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/w;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/n;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/extractor/ts/j;->d(Lcom/google/android/exoplayer2/extractor/ts/i0$b;)Lcom/google/android/exoplayer2/extractor/ts/k0;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/ts/n;-><init>(Lcom/google/android/exoplayer2/extractor/ts/k0;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/w;-><init>(Lcom/google/android/exoplayer2/extractor/ts/m;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
