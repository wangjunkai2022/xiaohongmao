.class public interface abstract Lcom/google/android/exoplayer2/extractor/q;
.super Ljava/lang/Object;
.source "ExtractorsFactory.java"


# static fields
.field public static final a:Lcom/google/android/exoplayer2/extractor/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/extractor/o;->b:Lcom/google/android/exoplayer2/extractor/o;

    sput-object v0, Lcom/google/android/exoplayer2/extractor/q;->a:Lcom/google/android/exoplayer2/extractor/q;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/exoplayer2/extractor/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Lcom/google/android/exoplayer2/extractor/k;"
        }
    .end annotation
.end method

.method public abstract b()[Lcom/google/android/exoplayer2/extractor/k;
.end method
