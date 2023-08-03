.class public final Lcom/google/android/exoplayer2/s2$b;
.super Ljava/lang/Object;
.source "Timeline.java"

# interfaces
.implements Lcom/google/android/exoplayer2/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/s2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field private static final h:I = 0x0

.field private static final i:I = 0x1

.field private static final j:I = 0x2

.field private static final k:I = 0x3

.field private static final l:I = 0x4

.field public static final m:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lcom/google/android/exoplayer2/s2$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public b:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public c:I

.field public d:J

.field public e:J

.field public f:Z

.field private g:Lcom/google/android/exoplayer2/source/ads/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/t2;->a:Lcom/google/android/exoplayer2/t2;

    sput-object v0, Lcom/google/android/exoplayer2/s2$b;->m:Lcom/google/android/exoplayer2/h$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/exoplayer2/source/ads/c;->l:Lcom/google/android/exoplayer2/source/ads/c;

    iput-object v0, p0, Lcom/google/android/exoplayer2/s2$b;->g:Lcom/google/android/exoplayer2/source/ads/c;

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/s2$b;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/s2$b;->c(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/s2$b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/s2$b;)Lcom/google/android/exoplayer2/source/ads/c;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/s2$b;->g:Lcom/google/android/exoplayer2/source/ads/c;

    return-object p0
.end method

.method private static c(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/s2$b;
    .locals 12

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/google/android/exoplayer2/s2$b;->s(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/google/android/exoplayer2/s2$b;->s(I)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const/4 v0, 0x2

    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/s2$b;->s(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const/4 v0, 0x3

    .line 4
    invoke-static {v0}, Lcom/google/android/exoplayer2/s2$b;->s(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    const/4 v0, 0x4

    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/s2$b;->s(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6
    sget-object v0, Lcom/google/android/exoplayer2/source/ads/c;->q:Lcom/google/android/exoplayer2/h$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/h$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/h;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/ads/c;

    goto :goto_0

    .line 7
    :cond_0
    sget-object p0, Lcom/google/android/exoplayer2/source/ads/c;->l:Lcom/google/android/exoplayer2/source/ads/c;

    :goto_0
    move-object v10, p0

    .line 8
    new-instance p0, Lcom/google/android/exoplayer2/s2$b;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/s2$b;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    .line 9
    invoke-virtual/range {v2 .. v11}, Lcom/google/android/exoplayer2/s2$b;->u(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/exoplayer2/source/ads/c;Z)Lcom/google/android/exoplayer2/s2$b;

    return-object p0
.end method

.method private static s(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public d(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/s2$b;->g:Lcom/google/android/exoplayer2/source/ads/c;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/c;->d:[Lcom/google/android/exoplayer2/source/ads/c$a;

    aget-object p1, v0, p1

    iget p1, p1, Lcom/google/android/exoplayer2/source/ads/c$a;->a:I

    return p1
.end method

.method public e(II)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/s2$b;->g:Lcom/google/android/exoplayer2/source/ads/c;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/c;->d:[Lcom/google/android/exoplayer2/source/ads/c$a;

    aget-object p1, v0, p1

    .line 2
    iget v0, p1, Lcom/google/android/exoplayer2/source/ads/c$a;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/ads/c$a;->d:[J

    aget-wide v0, p1, p2

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide v0
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
    const-class v2, Lcom/google/android/exoplayer2/s2$b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/s2$b;

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/s2$b;->a:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/exoplayer2/s2$b;->a:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/z0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/s2$b;->b:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/exoplayer2/s2$b;->b:Ljava/lang/Object;

    .line 4
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/z0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/s2$b;->c:I

    iget v3, p1, Lcom/google/android/exoplayer2/s2$b;->c:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/s2$b;->d:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/s2$b;->d:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/s2$b;->e:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/s2$b;->e:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/s2$b;->f:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/s2$b;->f:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/s2$b;->g:Lcom/google/android/exoplayer2/source/ads/c;

    iget-object p1, p1, Lcom/google/android/exoplayer2/s2$b;->g:Lcom/google/android/exoplayer2/source/ads/c;

    .line 5
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

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/s2$b;->g:Lcom/google/android/exoplayer2/source/ads/c;

    iget v0, v0, Lcom/google/android/exoplayer2/source/ads/c;->b:I

    return v0
.end method

.method public g(J)I
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/s2$b;->g:Lcom/google/android/exoplayer2/source/ads/c;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/s2$b;->d:J

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/source/ads/c;->c(JJ)I

    move-result p1

    return p1
.end method

.method public h(J)I
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/s2$b;->g:Lcom/google/android/exoplayer2/source/ads/c;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/s2$b;->d:J

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/source/ads/c;->d(JJ)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/s2$b;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0xd9

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/s2$b;->b:Ljava/lang/Object;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    .line 3
    iget v0, p0, Lcom/google/android/exoplayer2/s2$b;->c:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 4
    iget-wide v0, p0, Lcom/google/android/exoplayer2/s2$b;->d:J

    const/16 v3, 0x20

    ushr-long v4, v0, v3

    xor-long/2addr v0, v4

    long-to-int v1, v0

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    .line 5
    iget-wide v0, p0, Lcom/google/android/exoplayer2/s2$b;->e:J

    ushr-long v3, v0, v3

    xor-long/2addr v0, v3

    long-to-int v1, v0

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    .line 6
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/s2$b;->f:Z

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/s2$b;->g:Lcom/google/android/exoplayer2/source/ads/c;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ads/c;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    return v2
.end method

.method public i(I)J
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/s2$b;->g:Lcom/google/android/exoplayer2/source/ads/c;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/c;->c:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public j()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/s2$b;->g:Lcom/google/android/exoplayer2/source/ads/c;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/ads/c;->e:J

    return-wide v0
.end method

.method public k()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/s2$b;->g:Lcom/google/android/exoplayer2/source/ads/c;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/c;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public l()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/s2$b;->d:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/i;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public m()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/s2$b;->d:J

    return-wide v0
.end method

.method public n(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/s2$b;->g:Lcom/google/android/exoplayer2/source/ads/c;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/c;->d:[Lcom/google/android/exoplayer2/source/ads/c$a;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/ads/c$a;->e()I

    move-result p1

    return p1
.end method

.method public o(II)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/s2$b;->g:Lcom/google/android/exoplayer2/source/ads/c;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/c;->d:[Lcom/google/android/exoplayer2/source/ads/c$a;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/ads/c$a;->f(I)I

    move-result p1

    return p1
.end method

.method public p()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/s2$b;->e:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/i;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public q()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/s2$b;->e:J

    return-wide v0
.end method

.method public r(I)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/s2$b;->g:Lcom/google/android/exoplayer2/source/ads/c;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/c;->d:[Lcom/google/android/exoplayer2/source/ads/c$a;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/ads/c$a;->g()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public t(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/google/android/exoplayer2/s2$b;
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v8, Lcom/google/android/exoplayer2/source/ads/c;->l:Lcom/google/android/exoplayer2/source/ads/c;

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/exoplayer2/s2$b;->u(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/exoplayer2/source/ads/c;Z)Lcom/google/android/exoplayer2/s2$b;

    move-result-object v0

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Lcom/google/android/exoplayer2/s2$b;->s(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/s2$b;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Lcom/google/android/exoplayer2/s2$b;->s(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/s2$b;->d:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x2

    .line 4
    invoke-static {v1}, Lcom/google/android/exoplayer2/s2$b;->s(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/s2$b;->e:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x3

    .line 5
    invoke-static {v1}, Lcom/google/android/exoplayer2/s2$b;->s(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/s2$b;->f:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x4

    .line 6
    invoke-static {v1}, Lcom/google/android/exoplayer2/s2$b;->s(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/s2$b;->g:Lcom/google/android/exoplayer2/source/ads/c;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/ads/c;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public u(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/exoplayer2/source/ads/c;Z)Lcom/google/android/exoplayer2/s2$b;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/s2$b;->a:Ljava/lang/Object;

    .line 2
    iput-object p2, p0, Lcom/google/android/exoplayer2/s2$b;->b:Ljava/lang/Object;

    .line 3
    iput p3, p0, Lcom/google/android/exoplayer2/s2$b;->c:I

    .line 4
    iput-wide p4, p0, Lcom/google/android/exoplayer2/s2$b;->d:J

    .line 5
    iput-wide p6, p0, Lcom/google/android/exoplayer2/s2$b;->e:J

    .line 6
    iput-object p8, p0, Lcom/google/android/exoplayer2/s2$b;->g:Lcom/google/android/exoplayer2/source/ads/c;

    .line 7
    iput-boolean p9, p0, Lcom/google/android/exoplayer2/s2$b;->f:Z

    return-object p0
.end method
