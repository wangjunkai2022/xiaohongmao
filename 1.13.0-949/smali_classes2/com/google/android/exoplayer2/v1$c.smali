.class public final Lcom/google/android/exoplayer2/v1$c;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/v1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/v1$c$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/google/android/exoplayer2/v1$c;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/v1$c$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/v1$c$a;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/v1$c$a;->e()Lcom/google/android/exoplayer2/v1$c;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/v1$c;->b:Lcom/google/android/exoplayer2/v1$c;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/util/m;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/v1$c;->a:Lcom/google/android/exoplayer2/util/m;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/util/m;Lcom/google/android/exoplayer2/v1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/v1$c;-><init>(Lcom/google/android/exoplayer2/util/m;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/v1$c;)Lcom/google/android/exoplayer2/util/m;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/v1$c;->a:Lcom/google/android/exoplayer2/util/m;

    return-object p0
.end method


# virtual methods
.method public b(I)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/v1$c;->a:Lcom/google/android/exoplayer2/util/m;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/m;->a(I)Z

    move-result p1

    return p1
.end method

.method public c(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/v1$c;->a:Lcom/google/android/exoplayer2/util/m;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/m;->c(I)I

    move-result p1

    return p1
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/v1$c;->a:Lcom/google/android/exoplayer2/util/m;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/m;->d()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/android/exoplayer2/v1$c;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/v1$c;

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/v1$c;->a:Lcom/google/android/exoplayer2/util/m;

    iget-object p1, p1, Lcom/google/android/exoplayer2/v1$c;->a:Lcom/google/android/exoplayer2/util/m;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/m;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/v1$c;->a:Lcom/google/android/exoplayer2/util/m;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/m;->hashCode()I

    move-result v0

    return v0
.end method
