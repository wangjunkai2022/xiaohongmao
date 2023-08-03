.class public final Lcom/google/android/exoplayer2/source/ads/c;
.super Ljava/lang/Object;
.source "AdPlaybackState.java"

# interfaces
.implements Lcom/google/android/exoplayer2/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ads/c$b;,
        Lcom/google/android/exoplayer2/source/ads/c$a;
    }
.end annotation


# static fields
.field public static final g:I = 0x0

.field public static final h:I = 0x1

.field public static final i:I = 0x2

.field public static final j:I = 0x3

.field public static final k:I = 0x4

.field public static final l:Lcom/google/android/exoplayer2/source/ads/c;

.field private static final m:I = 0x1

.field private static final n:I = 0x2

.field private static final o:I = 0x3

.field private static final p:I = 0x4

.field public static final q:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lcom/google/android/exoplayer2/source/ads/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:I

.field public final c:[J

.field public final d:[Lcom/google/android/exoplayer2/source/ads/c$a;

.field public final e:J

.field public final f:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v8, Lcom/google/android/exoplayer2/source/ads/c;

    const/4 v0, 0x0

    new-array v2, v0, [J

    const/4 v1, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/ads/c;-><init>(Ljava/lang/Object;[J[Lcom/google/android/exoplayer2/source/ads/c$a;JJ)V

    sput-object v8, Lcom/google/android/exoplayer2/source/ads/c;->l:Lcom/google/android/exoplayer2/source/ads/c;

    .line 2
    sget-object v0, Lcom/google/android/exoplayer2/source/ads/a;->a:Lcom/google/android/exoplayer2/source/ads/a;

    sput-object v0, Lcom/google/android/exoplayer2/source/ads/c;->q:Lcom/google/android/exoplayer2/h$a;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Object;[J)V
    .locals 8

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/ads/c;-><init>(Ljava/lang/Object;[J[Lcom/google/android/exoplayer2/source/ads/c$a;JJ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[J[Lcom/google/android/exoplayer2/source/ads/c$a;JJ)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Lcom/google/android/exoplayer2/source/ads/c$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 3
    array-length v1, p3

    array-length v2, p2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/c;->a:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/c;->c:[J

    .line 6
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/ads/c;->e:J

    .line 7
    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/ads/c;->f:J

    .line 8
    array-length p1, p2

    iput p1, p0, Lcom/google/android/exoplayer2/source/ads/c;->b:I

    if-nez p3, :cond_2

    .line 9
    new-array p3, p1, [Lcom/google/android/exoplayer2/source/ads/c$a;

    .line 10
    :goto_2
    iget p1, p0, Lcom/google/android/exoplayer2/source/ads/c;->b:I

    if-ge v0, p1, :cond_2

    .line 11
    new-instance p1, Lcom/google/android/exoplayer2/source/ads/c$a;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/ads/c$a;-><init>()V

    aput-object p1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 12
    :cond_2
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ads/c;->d:[Lcom/google/android/exoplayer2/source/ads/c$a;

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/ads/c;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/ads/c;->b(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/ads/c;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/ads/c;
    .locals 13

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/c;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    const/4 v1, 0x2

    .line 2
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/c;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move-object v8, v1

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/exoplayer2/source/ads/c$a;

    const/4 v4, 0x0

    .line 4
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 5
    sget-object v5, Lcom/google/android/exoplayer2/source/ads/c$a;->i:Lcom/google/android/exoplayer2/h$a;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    invoke-interface {v5, v6}, Lcom/google/android/exoplayer2/h$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/h;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/ads/c$a;

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v8, v3

    :goto_1
    const/4 v1, 0x3

    .line 6
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/c;->g(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    const/4 v1, 0x4

    .line 7
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/c;->g(I)Ljava/lang/String;

    move-result-object v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, v1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 8
    new-instance p0, Lcom/google/android/exoplayer2/source/ads/c;

    const/4 v6, 0x0

    if-nez v0, :cond_2

    new-array v0, v2, [J

    :cond_2
    move-object v7, v0

    move-object v5, p0

    .line 9
    invoke-direct/range {v5 .. v12}, Lcom/google/android/exoplayer2/source/ads/c;-><init>(Ljava/lang/Object;[J[Lcom/google/android/exoplayer2/source/ads/c$a;JJ)V

    return-object p0
.end method

.method private f(JJI)Z
    .locals 6

    const-wide/high16 v0, -0x8000000000000000L

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-nez v3, :cond_0

    return v2

    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/c;->c:[J

    aget-wide v4, v3, p5

    const/4 p5, 0x1

    cmp-long v3, v4, v0

    if-nez v3, :cond_3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p3, v0

    if-eqz v3, :cond_1

    cmp-long v0, p1, p3

    if-gez v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2

    :cond_3
    cmp-long p3, p1, v4

    if-gez p3, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method private static g(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c(JJ)I
    .locals 6

    const/4 v0, -0x1

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v3, p1, v1

    if-eqz v3, :cond_4

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, p3, v3

    if-eqz v5, :cond_0

    cmp-long v3, p1, p3

    if-ltz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 p3, 0x0

    .line 1
    :goto_0
    iget-object p4, p0, Lcom/google/android/exoplayer2/source/ads/c;->c:[J

    array-length v3, p4

    if-ge p3, v3, :cond_3

    aget-wide v3, p4, p3

    cmp-long v5, v3, v1

    if-eqz v5, :cond_1

    aget-wide v3, p4, p3

    cmp-long p4, v3, p1

    if-lez p4, :cond_2

    :cond_1
    iget-object p4, p0, Lcom/google/android/exoplayer2/source/ads/c;->d:[Lcom/google/android/exoplayer2/source/ads/c$a;

    aget-object p4, p4, p3

    .line 2
    invoke-virtual {p4}, Lcom/google/android/exoplayer2/source/ads/c$a;->g()Z

    move-result p4

    if-nez p4, :cond_3

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 3
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ads/c;->c:[J

    array-length p1, p1

    if-ge p3, p1, :cond_4

    move v0, p3

    :cond_4
    :goto_1
    return v0
.end method

.method public d(JJ)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/c;->c:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, v0

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/ads/c;->f(JJI)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ads/c;->d:[Lcom/google/android/exoplayer2/source/ads/c$a;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/ads/c$a;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method public e(II)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/c;->d:[Lcom/google/android/exoplayer2/source/ads/c$a;

    array-length v1, v0

    const/4 v2, 0x0

    if-lt p1, v1, :cond_0

    return v2

    .line 2
    :cond_0
    aget-object p1, v0, p1

    .line 3
    iget v0, p1, Lcom/google/android/exoplayer2/source/ads/c$a;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    if-lt p2, v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/ads/c$a;->c:[I

    aget p1, p1, p2

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
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
    const-class v2, Lcom/google/android/exoplayer2/source/ads/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/source/ads/c;

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/c;->a:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/ads/c;->a:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/z0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/source/ads/c;->b:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/ads/c;->b:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ads/c;->e:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/ads/c;->e:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ads/c;->f:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/ads/c;->f:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/c;->c:[J

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/ads/c;->c:[J

    .line 4
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/c;->d:[Lcom/google/android/exoplayer2/source/ads/c$a;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/ads/c;->d:[Lcom/google/android/exoplayer2/source/ads/c$a;

    .line 5
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

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

.method public h(II)Lcom/google/android/exoplayer2/source/ads/c;
    .locals 9
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/c;->d:[Lcom/google/android/exoplayer2/source/ads/c$a;

    aget-object v1, v0, p1

    iget v1, v1, Lcom/google/android/exoplayer2/source/ads/c$a;->a:I

    if-ne v1, p2, :cond_1

    return-object p0

    .line 3
    :cond_1
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/z0;->T0([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Lcom/google/android/exoplayer2/source/ads/c$a;

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/c;->d:[Lcom/google/android/exoplayer2/source/ads/c$a;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/ads/c$a;->i(I)Lcom/google/android/exoplayer2/source/ads/c$a;

    move-result-object p2

    aput-object p2, v4, p1

    .line 5
    new-instance p1, Lcom/google/android/exoplayer2/source/ads/c;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/c;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/c;->c:[J

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/ads/c;->e:J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/ads/c;->f:J

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/ads/c;-><init>(Ljava/lang/Object;[J[Lcom/google/android/exoplayer2/source/ads/c$a;JJ)V

    return-object p1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/c;->b:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/c;->a:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/ads/c;->e:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/ads/c;->f:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/c;->c:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/c;->d:[Lcom/google/android/exoplayer2/source/ads/c$a;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public i([[J)Lcom/google/android/exoplayer2/source/ads/c;
    .locals 9
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/c;->d:[Lcom/google/android/exoplayer2/source/ads/c$a;

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/z0;->T0([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Lcom/google/android/exoplayer2/source/ads/c$a;

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/source/ads/c;->b:I

    if-ge v0, v1, :cond_0

    .line 3
    aget-object v1, v4, v0

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/ads/c$a;->j([J)Lcom/google/android/exoplayer2/source/ads/c$a;

    move-result-object v1

    aput-object v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/source/ads/c;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/c;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/c;->c:[J

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/ads/c;->e:J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/ads/c;->f:J

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/ads/c;-><init>(Ljava/lang/Object;[J[Lcom/google/android/exoplayer2/source/ads/c$a;JJ)V

    return-object p1
.end method

.method public j(II)Lcom/google/android/exoplayer2/source/ads/c;
    .locals 9
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/c;->d:[Lcom/google/android/exoplayer2/source/ads/c$a;

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/z0;->T0([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Lcom/google/android/exoplayer2/source/ads/c$a;

    .line 2
    aget-object v0, v4, p1

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p2}, Lcom/google/android/exoplayer2/source/ads/c$a;->k(II)Lcom/google/android/exoplayer2/source/ads/c$a;

    move-result-object p2

    aput-object p2, v4, p1

    .line 3
    new-instance p1, Lcom/google/android/exoplayer2/source/ads/c;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/c;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/c;->c:[J

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/ads/c;->e:J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/ads/c;->f:J

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/ads/c;-><init>(Ljava/lang/Object;[J[Lcom/google/android/exoplayer2/source/ads/c$a;JJ)V

    return-object p1
.end method

.method public k(J)Lcom/google/android/exoplayer2/source/ads/c;
    .locals 11
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ads/c;->e:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/ads/c;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/c;->a:Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ads/c;->c:[J

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ads/c;->d:[Lcom/google/android/exoplayer2/source/ads/c$a;

    iget-wide v9, p0, Lcom/google/android/exoplayer2/source/ads/c;->f:J

    move-object v3, v0

    move-wide v7, p1

    invoke-direct/range {v3 .. v10}, Lcom/google/android/exoplayer2/source/ads/c;-><init>(Ljava/lang/Object;[J[Lcom/google/android/exoplayer2/source/ads/c$a;JJ)V

    return-object v0
.end method

.method public l(IILandroid/net/Uri;)Lcom/google/android/exoplayer2/source/ads/c;
    .locals 9
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/c;->d:[Lcom/google/android/exoplayer2/source/ads/c$a;

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/z0;->T0([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Lcom/google/android/exoplayer2/source/ads/c$a;

    .line 2
    aget-object v0, v4, p1

    invoke-virtual {v0, p3, p2}, Lcom/google/android/exoplayer2/source/ads/c$a;->l(Landroid/net/Uri;I)Lcom/google/android/exoplayer2/source/ads/c$a;

    move-result-object p2

    aput-object p2, v4, p1

    .line 3
    new-instance p1, Lcom/google/android/exoplayer2/source/ads/c;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/c;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/c;->c:[J

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/ads/c;->e:J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/ads/c;->f:J

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/ads/c;-><init>(Ljava/lang/Object;[J[Lcom/google/android/exoplayer2/source/ads/c$a;JJ)V

    return-object p1
.end method

.method public m(J)Lcom/google/android/exoplayer2/source/ads/c;
    .locals 11
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ads/c;->f:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/ads/c;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/c;->a:Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ads/c;->c:[J

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ads/c;->d:[Lcom/google/android/exoplayer2/source/ads/c$a;

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/ads/c;->e:J

    move-object v3, v0

    move-wide v9, p1

    invoke-direct/range {v3 .. v10}, Lcom/google/android/exoplayer2/source/ads/c;-><init>(Ljava/lang/Object;[J[Lcom/google/android/exoplayer2/source/ads/c$a;JJ)V

    return-object v0
.end method

.method public n(II)Lcom/google/android/exoplayer2/source/ads/c;
    .locals 9
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/c;->d:[Lcom/google/android/exoplayer2/source/ads/c$a;

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/z0;->T0([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Lcom/google/android/exoplayer2/source/ads/c$a;

    .line 2
    aget-object v0, v4, p1

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2}, Lcom/google/android/exoplayer2/source/ads/c$a;->k(II)Lcom/google/android/exoplayer2/source/ads/c$a;

    move-result-object p2

    aput-object p2, v4, p1

    .line 3
    new-instance p1, Lcom/google/android/exoplayer2/source/ads/c;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/c;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/c;->c:[J

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/ads/c;->e:J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/ads/c;->f:J

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/ads/c;-><init>(Ljava/lang/Object;[J[Lcom/google/android/exoplayer2/source/ads/c$a;JJ)V

    return-object p1
.end method

.method public o(II)Lcom/google/android/exoplayer2/source/ads/c;
    .locals 9
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/c;->d:[Lcom/google/android/exoplayer2/source/ads/c$a;

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/z0;->T0([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Lcom/google/android/exoplayer2/source/ads/c$a;

    .line 2
    aget-object v0, v4, p1

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lcom/google/android/exoplayer2/source/ads/c$a;->k(II)Lcom/google/android/exoplayer2/source/ads/c$a;

    move-result-object p2

    aput-object p2, v4, p1

    .line 3
    new-instance p1, Lcom/google/android/exoplayer2/source/ads/c;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/c;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/c;->c:[J

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/ads/c;->e:J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/ads/c;->f:J

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/ads/c;-><init>(Ljava/lang/Object;[J[Lcom/google/android/exoplayer2/source/ads/c$a;JJ)V

    return-object p1
.end method

.method public p(I)Lcom/google/android/exoplayer2/source/ads/c;
    .locals 9
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/c;->d:[Lcom/google/android/exoplayer2/source/ads/c$a;

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/z0;->T0([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Lcom/google/android/exoplayer2/source/ads/c$a;

    .line 2
    aget-object v0, v4, p1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ads/c$a;->m()Lcom/google/android/exoplayer2/source/ads/c$a;

    move-result-object v0

    aput-object v0, v4, p1

    .line 3
    new-instance p1, Lcom/google/android/exoplayer2/source/ads/c;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/c;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/c;->c:[J

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/ads/c;->e:J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/ads/c;->f:J

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/ads/c;-><init>(Ljava/lang/Object;[J[Lcom/google/android/exoplayer2/source/ads/c$a;JJ)V

    return-object p1
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 6

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/c;->g(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/c;->c:[J

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/c;->d:[Lcom/google/android/exoplayer2/source/ads/c$a;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 5
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/ads/c$a;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    .line 6
    invoke-static {v2}, Lcom/google/android/exoplayer2/source/ads/c;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v1, 0x3

    .line 7
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/c;->g(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ads/c;->e:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x4

    .line 8
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/c;->g(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ads/c;->f:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdPlaybackState(adsId="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/c;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adResumePositionUs="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/ads/c;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", adGroups=["

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 7
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/c;->d:[Lcom/google/android/exoplayer2/source/ads/c$a;

    array-length v3, v3

    const-string v4, "])"

    if-ge v2, v3, :cond_8

    const-string v3, "adGroup(timeUs="

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/c;->c:[J

    aget-wide v5, v3, v2

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", ads=["

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    .line 11
    :goto_1
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ads/c;->d:[Lcom/google/android/exoplayer2/source/ads/c$a;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/ads/c$a;->c:[I

    array-length v5, v5

    const-string v6, ", "

    const/4 v7, 0x1

    if-ge v3, v5, :cond_6

    const-string v5, "ad(state="

    .line 12
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ads/c;->d:[Lcom/google/android/exoplayer2/source/ads/c$a;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/ads/c$a;->c:[I

    aget v5, v5, v3

    if-eqz v5, :cond_4

    if-eq v5, v7, :cond_3

    const/4 v8, 0x2

    if-eq v5, v8, :cond_2

    const/4 v8, 0x3

    if-eq v5, v8, :cond_1

    const/4 v8, 0x4

    if-eq v5, v8, :cond_0

    const/16 v5, 0x3f

    .line 14
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const/16 v5, 0x21

    .line 15
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const/16 v5, 0x50

    .line 16
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const/16 v5, 0x53

    .line 17
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const/16 v5, 0x52

    .line 18
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const/16 v5, 0x5f

    .line 19
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    const-string v5, ", durationUs="

    .line 20
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ads/c;->d:[Lcom/google/android/exoplayer2/source/ads/c$a;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/ads/c$a;->d:[J

    aget-wide v8, v5, v3

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    .line 22
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ads/c;->d:[Lcom/google/android/exoplayer2/source/ads/c$a;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/ads/c$a;->c:[I

    array-length v5, v5

    sub-int/2addr v5, v7

    if-ge v3, v5, :cond_5

    .line 24
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 25
    :cond_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/c;->d:[Lcom/google/android/exoplayer2/source/ads/c$a;

    array-length v3, v3

    sub-int/2addr v3, v7

    if-ge v2, v3, :cond_7

    .line 27
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 28
    :cond_8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
