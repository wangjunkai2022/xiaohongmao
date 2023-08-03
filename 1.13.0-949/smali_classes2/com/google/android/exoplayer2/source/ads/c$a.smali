.class public final Lcom/google/android/exoplayer2/source/ads/c$a;
.super Ljava/lang/Object;
.source "AdPlaybackState.java"

# interfaces
.implements Lcom/google/android/exoplayer2/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ads/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static final e:I = 0x0

.field private static final f:I = 0x1

.field private static final g:I = 0x2

.field private static final h:I = 0x3

.field public static final i:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lcom/google/android/exoplayer2/source/ads/c$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:[Landroid/net/Uri;

.field public final c:[I

.field public final d:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/source/ads/b;->a:Lcom/google/android/exoplayer2/source/ads/b;

    sput-object v0, Lcom/google/android/exoplayer2/source/ads/c$a;->i:Lcom/google/android/exoplayer2/h$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [I

    new-array v2, v0, [Landroid/net/Uri;

    new-array v0, v0, [J

    const/4 v3, -0x1

    .line 1
    invoke-direct {p0, v3, v1, v2, v0}, Lcom/google/android/exoplayer2/source/ads/c$a;-><init>(I[I[Landroid/net/Uri;[J)V

    return-void
.end method

.method private constructor <init>(I[I[Landroid/net/Uri;[J)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 4
    iput p1, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->a:I

    .line 5
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->c:[I

    .line 6
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->b:[Landroid/net/Uri;

    .line 7
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->d:[J

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/ads/c$a;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/ads/c$a;->d(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/ads/c$a;

    move-result-object p0

    return-object p0
.end method

.method private static b([JI)[J
    .locals 3
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    invoke-static {p0, v0, p1, v1, v2}, Ljava/util/Arrays;->fill([JIIJ)V

    return-object p0
.end method

.method private static c([II)[I
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v0, p1, v1}, Ljava/util/Arrays;->fill([IIII)V

    return-object p0
.end method

.method private static d(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/ads/c$a;
    .locals 6

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/c$a;->h(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    .line 2
    invoke-static {v2}, Lcom/google/android/exoplayer2/source/ads/c$a;->h(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x2

    .line 3
    invoke-static {v3}, Lcom/google/android/exoplayer2/source/ads/c$a;->h(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    const/4 v4, 0x3

    .line 4
    invoke-static {v4}, Lcom/google/android/exoplayer2/source/ads/c$a;->h(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object p0

    .line 5
    new-instance v4, Lcom/google/android/exoplayer2/source/ads/c$a;

    if-nez v3, :cond_0

    new-array v3, v0, [I

    :cond_0
    if-nez v2, :cond_1

    new-array v2, v0, [Landroid/net/Uri;

    goto :goto_0

    :cond_1
    new-array v5, v0, [Landroid/net/Uri;

    .line 6
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Uri;

    :goto_0
    if-nez p0, :cond_2

    new-array p0, v0, [J

    .line 7
    :cond_2
    invoke-direct {v4, v1, v3, v2, p0}, Lcom/google/android/exoplayer2/source/ads/c$a;-><init>(I[I[Landroid/net/Uri;[J)V

    return-object v4
.end method

.method private static h(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public e()I
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/ads/c$a;->f(I)I

    move-result v0

    return v0
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
    const-class v2, Lcom/google/android/exoplayer2/source/ads/c$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/source/ads/c$a;

    .line 3
    iget v2, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->a:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/ads/c$a;->a:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->b:[Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/ads/c$a;->b:[Landroid/net/Uri;

    .line 4
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->c:[I

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/ads/c$a;->c:[I

    .line 5
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->d:[J

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/ads/c$a;->d:[J

    .line 6
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([J[J)Z

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

.method public f(I)I
    .locals 3

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->c:[I

    array-length v2, v1

    if-ge p1, v2, :cond_1

    .line 2
    aget v2, v1, p1

    if-eqz v2, :cond_1

    aget v1, v1, p1

    if-ne v1, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method public g()Z
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ads/c$a;->e()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->a:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->a:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->b:[Landroid/net/Uri;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->c:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->d:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public i(I)Lcom/google/android/exoplayer2/source/ads/c$a;
    .locals 4
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->c:[I

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/source/ads/c$a;->c([II)[I

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->d:[J

    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/source/ads/c$a;->b([JI)[J

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->b:[Landroid/net/Uri;

    invoke-static {v2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Uri;

    .line 4
    new-instance v3, Lcom/google/android/exoplayer2/source/ads/c$a;

    invoke-direct {v3, p1, v0, v2, v1}, Lcom/google/android/exoplayer2/source/ads/c$a;-><init>(I[I[Landroid/net/Uri;[J)V

    return-object v3
.end method

.method public j([J)Lcom/google/android/exoplayer2/source/ads/c$a;
    .locals 4
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    array-length v0, p1

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->b:[Landroid/net/Uri;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2
    array-length v0, v1

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/source/ads/c$a;->b([JI)[J

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->a:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    array-length v0, p1

    array-length v2, v1

    if-le v0, v2, :cond_1

    .line 4
    array-length v0, v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    .line 5
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/exoplayer2/source/ads/c$a;

    iget v1, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->a:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->c:[I

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->b:[Landroid/net/Uri;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/android/exoplayer2/source/ads/c$a;-><init>(I[I[Landroid/net/Uri;[J)V

    return-object v0
.end method

.method public k(II)Lcom/google/android/exoplayer2/source/ads/c$a;
    .locals 5
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->c:[I

    add-int/lit8 v3, p2, 0x1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/source/ads/c$a;->c([II)[I

    move-result-object v0

    .line 3
    aget v3, v0, p2

    if-eqz v3, :cond_2

    aget v3, v0, p2

    if-eq v3, v2, :cond_2

    aget v3, v0, p2

    if-ne v3, p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->d:[J

    array-length v2, v1

    array-length v3, v0

    if-ne v2, v3, :cond_4

    goto :goto_2

    .line 5
    :cond_4
    array-length v2, v0

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/source/ads/c$a;->b([JI)[J

    move-result-object v1

    .line 6
    :goto_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->b:[Landroid/net/Uri;

    array-length v3, v2

    array-length v4, v0

    if-ne v3, v4, :cond_5

    goto :goto_3

    :cond_5
    array-length v3, v0

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Uri;

    .line 7
    :goto_3
    aput p1, v0, p2

    .line 8
    new-instance p1, Lcom/google/android/exoplayer2/source/ads/c$a;

    iget p2, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->a:I

    invoke-direct {p1, p2, v0, v2, v1}, Lcom/google/android/exoplayer2/source/ads/c$a;-><init>(I[I[Landroid/net/Uri;[J)V

    return-object p1
.end method

.method public l(Landroid/net/Uri;I)Lcom/google/android/exoplayer2/source/ads/c$a;
    .locals 4
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->c:[I

    add-int/lit8 v1, p2, 0x1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/ads/c$a;->c([II)[I

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->d:[J

    array-length v2, v1

    array-length v3, v0

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v2, v0

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/source/ads/c$a;->b([JI)[J

    move-result-object v1

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->b:[Landroid/net/Uri;

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Uri;

    .line 5
    aput-object p1, v2, p2

    const/4 p1, 0x1

    .line 6
    aput p1, v0, p2

    .line 7
    new-instance p1, Lcom/google/android/exoplayer2/source/ads/c$a;

    iget p2, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->a:I

    invoke-direct {p1, p2, v0, v2, v1}, Lcom/google/android/exoplayer2/source/ads/c$a;-><init>(I[I[Landroid/net/Uri;[J)V

    return-object p1
.end method

.method public m()Lcom/google/android/exoplayer2/source/ads/c$a;
    .locals 5
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->a:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/source/ads/c$a;

    new-array v2, v1, [I

    new-array v3, v1, [Landroid/net/Uri;

    new-array v4, v1, [J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/source/ads/c$a;-><init>(I[I[Landroid/net/Uri;[J)V

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->c:[I

    array-length v2, v0

    .line 4
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    :goto_0
    if-ge v1, v2, :cond_3

    .line 5
    aget v3, v0, v1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    aget v3, v0, v1

    if-nez v3, :cond_2

    :cond_1
    const/4 v3, 0x2

    .line 6
    aput v3, v0, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_3
    new-instance v1, Lcom/google/android/exoplayer2/source/ads/c$a;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->b:[Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->d:[J

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/android/exoplayer2/source/ads/c$a;-><init>(I[I[Landroid/net/Uri;[J)V

    return-object v1
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/c$a;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/c$a;->h(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->b:[Landroid/net/Uri;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v1, 0x2

    .line 5
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/c$a;->h(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->c:[I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const/4 v1, 0x3

    .line 6
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/c$a;->h(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/c$a;->d:[J

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    return-object v0
.end method
