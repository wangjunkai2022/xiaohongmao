.class final Lcom/google/android/play/core/splitcompat/i;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/splitcompat/k;


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/google/android/play/core/splitcompat/t;

.field final synthetic c:Lcom/google/android/play/core/splitcompat/n;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitcompat/n;Ljava/util/Set;Lcom/google/android/play/core/splitcompat/t;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/splitcompat/i;->c:Lcom/google/android/play/core/splitcompat/n;

    iput-object p2, p0, Lcom/google/android/play/core/splitcompat/i;->a:Ljava/util/Set;

    iput-object p3, p0, Lcom/google/android/play/core/splitcompat/i;->b:Lcom/google/android/play/core/splitcompat/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/zip/ZipFile;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/splitcompat/i;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/play/core/splitcompat/i;->c:Lcom/google/android/play/core/splitcompat/n;

    iget-object v2, p0, Lcom/google/android/play/core/splitcompat/i;->b:Lcom/google/android/play/core/splitcompat/t;

    invoke-static {v1, p2, v2, p1}, Lcom/google/android/play/core/splitcompat/n;->a(Lcom/google/android/play/core/splitcompat/n;Ljava/util/Set;Lcom/google/android/play/core/splitcompat/t;Ljava/util/zip/ZipFile;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
