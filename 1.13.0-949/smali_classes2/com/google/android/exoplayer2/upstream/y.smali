.class public final Lcom/google/android/exoplayer2/upstream/y;
.super Ljava/lang/Object;
.source "DummyDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/m;


# static fields
.field public static final b:Lcom/google/android/exoplayer2/upstream/y;

.field public static final c:Lcom/google/android/exoplayer2/upstream/m$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/upstream/y;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/y;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/y;->b:Lcom/google/android/exoplayer2/upstream/y;

    .line 2
    sget-object v0, Lcom/google/android/exoplayer2/upstream/x;->a:Lcom/google/android/exoplayer2/upstream/x;

    sput-object v0, Lcom/google/android/exoplayer2/upstream/y;->c:Lcom/google/android/exoplayer2/upstream/m$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic t()Lcom/google/android/exoplayer2/upstream/y;
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/upstream/y;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/y;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/upstream/o;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/io/IOException;

    const-string v0, "DummyDataSource cannot be opened"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic b()Ljava/util/Map;
    .locals 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/l;->a(Lcom/google/android/exoplayer2/upstream/m;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public e(Lcom/google/android/exoplayer2/upstream/p0;)V
    .locals 0

    return-void
.end method

.method public read([BII)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
