.class public final Lcom/google/android/exoplayer2/s2$d;
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
    name = "d"
.end annotation


# static fields
.field private static final A:I = 0x7

.field private static final B:I = 0x8

.field private static final C:I = 0x9

.field private static final D:I = 0xa

.field private static final E:I = 0xb

.field private static final F:I = 0xc

.field private static final G:I = 0xd

.field public static final H:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lcom/google/android/exoplayer2/s2$d;",
            ">;"
        }
    .end annotation
.end field

.field public static final r:Ljava/lang/Object;

.field private static final s:Ljava/lang/Object;

.field private static final t:Lcom/google/android/exoplayer2/b1;

.field private static final u:I = 0x1

.field private static final v:I = 0x2

.field private static final w:I = 0x3

.field private static final x:I = 0x4

.field private static final y:I = 0x5

.field private static final z:I = 0x6


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public c:Lcom/google/android/exoplayer2/b1;

.field public d:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public e:J

.field public f:J

.field public g:J

.field public h:Z

.field public i:Z

.field public j:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public k:Lcom/google/android/exoplayer2/b1$f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public l:Z

.field public m:J

.field public n:J

.field public o:I

.field public p:I

.field public q:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/s2$d;->r:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/s2$d;->s:Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/b1$c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/b1$c;-><init>()V

    const-string v1, "com.google.android.exoplayer2.Timeline"

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/b1$c;->z(Ljava/lang/String;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object v0

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/b1$c;->F(Landroid/net/Uri;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b1$c;->a()Lcom/google/android/exoplayer2/b1;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/s2$d;->t:Lcom/google/android/exoplayer2/b1;

    .line 7
    sget-object v0, Lcom/google/android/exoplayer2/u2;->a:Lcom/google/android/exoplayer2/u2;

    sput-object v0, Lcom/google/android/exoplayer2/s2$d;->H:Lcom/google/android/exoplayer2/h$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/exoplayer2/s2$d;->r:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/exoplayer2/s2$d;->a:Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/google/android/exoplayer2/s2$d;->t:Lcom/google/android/exoplayer2/b1;

    iput-object v0, p0, Lcom/google/android/exoplayer2/s2$d;->c:Lcom/google/android/exoplayer2/b1;

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/s2$d;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/s2$d;->b(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/s2$d;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/s2$d;
    .locals 26

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 1
    invoke-static {v1}, Lcom/google/android/exoplayer2/s2$d;->k(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    sget-object v3, Lcom/google/android/exoplayer2/b1;->k:Lcom/google/android/exoplayer2/h$a;

    invoke-interface {v3, v1}, Lcom/google/android/exoplayer2/h$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/h;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/b1;

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v2

    :goto_0
    const/4 v1, 0x2

    .line 3
    invoke-static {v1}, Lcom/google/android/exoplayer2/s2$d;->k(I)Ljava/lang/String;

    move-result-object v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    const/4 v1, 0x3

    .line 5
    invoke-static {v1}, Lcom/google/android/exoplayer2/s2$d;->k(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    const/4 v1, 0x4

    .line 6
    invoke-static {v1}, Lcom/google/android/exoplayer2/s2$d;->k(I)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    const/4 v1, 0x5

    .line 8
    invoke-static {v1}, Lcom/google/android/exoplayer2/s2$d;->k(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    const/4 v1, 0x6

    .line 9
    invoke-static {v1}, Lcom/google/android/exoplayer2/s2$d;->k(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    const/4 v1, 0x7

    .line 10
    invoke-static {v1}, Lcom/google/android/exoplayer2/s2$d;->k(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 11
    sget-object v2, Lcom/google/android/exoplayer2/b1$f;->l:Lcom/google/android/exoplayer2/h$a;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/h$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/h;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/android/exoplayer2/b1$f;

    :cond_1
    move-object v15, v2

    const/16 v1, 0x8

    .line 12
    invoke-static {v1}, Lcom/google/android/exoplayer2/s2$d;->k(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v2, 0x9

    .line 13
    invoke-static {v2}, Lcom/google/android/exoplayer2/s2$d;->k(I)Ljava/lang/String;

    move-result-object v2

    move-wide/from16 v24, v7

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    const/16 v2, 0xa

    .line 14
    invoke-static {v2}, Lcom/google/android/exoplayer2/s2$d;->k(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    const/16 v2, 0xb

    .line 15
    invoke-static {v2}, Lcom/google/android/exoplayer2/s2$d;->k(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    const/16 v2, 0xc

    .line 16
    invoke-static {v2}, Lcom/google/android/exoplayer2/s2$d;->k(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v21

    const/16 v2, 0xd

    .line 17
    invoke-static {v2}, Lcom/google/android/exoplayer2/s2$d;->k(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v22

    .line 18
    new-instance v0, Lcom/google/android/exoplayer2/s2$d;

    move-object v3, v0

    invoke-direct {v0}, Lcom/google/android/exoplayer2/s2$d;-><init>()V

    .line 19
    sget-object v4, Lcom/google/android/exoplayer2/s2$d;->s:Ljava/lang/Object;

    const/4 v6, 0x0

    move-wide/from16 v7, v24

    invoke-virtual/range {v3 .. v23}, Lcom/google/android/exoplayer2/s2$d;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/b1;Ljava/lang/Object;JJJZZLcom/google/android/exoplayer2/b1$f;JJIIJ)Lcom/google/android/exoplayer2/s2$d;

    .line 20
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/s2$d;->l:Z

    return-object v0
.end method

.method private static k(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/s2$d;->g:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/z0;->h0(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/s2$d;->m:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/i;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/s2$d;->m:J

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
    const-class v2, Lcom/google/android/exoplayer2/s2$d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/s2$d;

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/s2$d;->a:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/exoplayer2/s2$d;->a:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/z0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/s2$d;->c:Lcom/google/android/exoplayer2/b1;

    iget-object v3, p1, Lcom/google/android/exoplayer2/s2$d;->c:Lcom/google/android/exoplayer2/b1;

    .line 4
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/z0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/s2$d;->d:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/exoplayer2/s2$d;->d:Ljava/lang/Object;

    .line 5
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/z0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/s2$d;->k:Lcom/google/android/exoplayer2/b1$f;

    iget-object v3, p1, Lcom/google/android/exoplayer2/s2$d;->k:Lcom/google/android/exoplayer2/b1$f;

    .line 6
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/z0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/s2$d;->e:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/s2$d;->e:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/s2$d;->f:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/s2$d;->f:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/s2$d;->g:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/s2$d;->g:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/s2$d;->h:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/s2$d;->h:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/s2$d;->i:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/s2$d;->i:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/s2$d;->l:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/s2$d;->l:Z

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/s2$d;->m:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/s2$d;->m:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/s2$d;->n:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/s2$d;->n:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/s2$d;->o:I

    iget v3, p1, Lcom/google/android/exoplayer2/s2$d;->o:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/s2$d;->p:I

    iget v3, p1, Lcom/google/android/exoplayer2/s2$d;->p:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/s2$d;->q:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/s2$d;->q:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/s2$d;->n:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/i;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/s2$d;->n:J

    return-wide v0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/s2$d;->q:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/i;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/s2$d;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0xd9

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/s2$d;->c:Lcom/google/android/exoplayer2/b1;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b1;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/s2$d;->d:Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/s2$d;->k:Lcom/google/android/exoplayer2/b1$f;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b1$f;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 5
    iget-wide v2, p0, Lcom/google/android/exoplayer2/s2$d;->e:J

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    .line 6
    iget-wide v2, p0, Lcom/google/android/exoplayer2/s2$d;->f:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    .line 7
    iget-wide v2, p0, Lcom/google/android/exoplayer2/s2$d;->g:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    .line 8
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/s2$d;->h:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 9
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/s2$d;->i:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 10
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/s2$d;->l:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 11
    iget-wide v2, p0, Lcom/google/android/exoplayer2/s2$d;->m:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    .line 12
    iget-wide v2, p0, Lcom/google/android/exoplayer2/s2$d;->n:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    .line 13
    iget v2, p0, Lcom/google/android/exoplayer2/s2$d;->o:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 14
    iget v2, p0, Lcom/google/android/exoplayer2/s2$d;->p:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 15
    iget-wide v2, p0, Lcom/google/android/exoplayer2/s2$d;->q:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public i()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/s2$d;->q:J

    return-wide v0
.end method

.method public j()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/s2$d;->j:Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/s2$d;->k:Lcom/google/android/exoplayer2/b1$f;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/s2$d;->k:Lcom/google/android/exoplayer2/b1$f;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method public l(Ljava/lang/Object;Lcom/google/android/exoplayer2/b1;Ljava/lang/Object;JJJZZLcom/google/android/exoplayer2/b1$f;JJIIJ)Lcom/google/android/exoplayer2/s2$d;
    .locals 5
    .param p2    # Lcom/google/android/exoplayer2/b1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p12    # Lcom/google/android/exoplayer2/b1$f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p12

    move-object v3, p1

    .line 1
    iput-object v3, v0, Lcom/google/android/exoplayer2/s2$d;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    move-object v3, v1

    goto :goto_0

    .line 2
    :cond_0
    sget-object v3, Lcom/google/android/exoplayer2/s2$d;->t:Lcom/google/android/exoplayer2/b1;

    :goto_0
    iput-object v3, v0, Lcom/google/android/exoplayer2/s2$d;->c:Lcom/google/android/exoplayer2/b1;

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, v1, Lcom/google/android/exoplayer2/b1;->b:Lcom/google/android/exoplayer2/b1$g;

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, v1, Lcom/google/android/exoplayer2/b1$g;->h:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 5
    :goto_1
    iput-object v1, v0, Lcom/google/android/exoplayer2/s2$d;->b:Ljava/lang/Object;

    move-object v1, p3

    .line 6
    iput-object v1, v0, Lcom/google/android/exoplayer2/s2$d;->d:Ljava/lang/Object;

    move-wide v3, p4

    .line 7
    iput-wide v3, v0, Lcom/google/android/exoplayer2/s2$d;->e:J

    move-wide v3, p6

    .line 8
    iput-wide v3, v0, Lcom/google/android/exoplayer2/s2$d;->f:J

    move-wide v3, p8

    .line 9
    iput-wide v3, v0, Lcom/google/android/exoplayer2/s2$d;->g:J

    move v1, p10

    .line 10
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/s2$d;->h:Z

    move/from16 v1, p11

    .line 11
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/s2$d;->i:Z

    const/4 v1, 0x0

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 12
    :goto_2
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/s2$d;->j:Z

    .line 13
    iput-object v2, v0, Lcom/google/android/exoplayer2/s2$d;->k:Lcom/google/android/exoplayer2/b1$f;

    move-wide/from16 v2, p13

    .line 14
    iput-wide v2, v0, Lcom/google/android/exoplayer2/s2$d;->m:J

    move-wide/from16 v2, p15

    .line 15
    iput-wide v2, v0, Lcom/google/android/exoplayer2/s2$d;->n:J

    move/from16 v2, p17

    .line 16
    iput v2, v0, Lcom/google/android/exoplayer2/s2$d;->o:I

    move/from16 v2, p18

    .line 17
    iput v2, v0, Lcom/google/android/exoplayer2/s2$d;->p:I

    move-wide/from16 v2, p19

    .line 18
    iput-wide v2, v0, Lcom/google/android/exoplayer2/s2$d;->q:J

    .line 19
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/s2$d;->l:Z

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Lcom/google/android/exoplayer2/s2$d;->k(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/s2$d;->c:Lcom/google/android/exoplayer2/b1;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/b1;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x2

    .line 3
    invoke-static {v1}, Lcom/google/android/exoplayer2/s2$d;->k(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/s2$d;->e:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x3

    .line 4
    invoke-static {v1}, Lcom/google/android/exoplayer2/s2$d;->k(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/s2$d;->f:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x4

    .line 5
    invoke-static {v1}, Lcom/google/android/exoplayer2/s2$d;->k(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/s2$d;->g:J

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x5

    .line 7
    invoke-static {v1}, Lcom/google/android/exoplayer2/s2$d;->k(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/s2$d;->h:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x6

    .line 8
    invoke-static {v1}, Lcom/google/android/exoplayer2/s2$d;->k(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/s2$d;->i:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9
    iget-object v1, p0, Lcom/google/android/exoplayer2/s2$d;->k:Lcom/google/android/exoplayer2/b1$f;

    if-eqz v1, :cond_0

    const/4 v2, 0x7

    .line 10
    invoke-static {v2}, Lcom/google/android/exoplayer2/s2$d;->k(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/b1$f;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    const/16 v1, 0x8

    .line 11
    invoke-static {v1}, Lcom/google/android/exoplayer2/s2$d;->k(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/s2$d;->l:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x9

    .line 12
    invoke-static {v1}, Lcom/google/android/exoplayer2/s2$d;->k(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/s2$d;->m:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v1, 0xa

    .line 13
    invoke-static {v1}, Lcom/google/android/exoplayer2/s2$d;->k(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/s2$d;->n:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v1, 0xb

    .line 14
    invoke-static {v1}, Lcom/google/android/exoplayer2/s2$d;->k(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/s2$d;->o:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0xc

    .line 15
    invoke-static {v1}, Lcom/google/android/exoplayer2/s2$d;->k(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/s2$d;->p:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0xd

    .line 16
    invoke-static {v1}, Lcom/google/android/exoplayer2/s2$d;->k(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/s2$d;->q:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method
