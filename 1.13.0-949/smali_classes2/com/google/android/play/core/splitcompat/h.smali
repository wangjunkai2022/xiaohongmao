.class final Lcom/google/android/play/core/splitcompat/h;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/splitcompat/k;


# instance fields
.field final synthetic a:Lcom/google/android/play/core/splitcompat/t;

.field final synthetic b:Ljava/util/Set;

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic d:Lcom/google/android/play/core/splitcompat/n;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitcompat/n;Lcom/google/android/play/core/splitcompat/t;Ljava/util/Set;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/splitcompat/h;->d:Lcom/google/android/play/core/splitcompat/n;

    iput-object p2, p0, Lcom/google/android/play/core/splitcompat/h;->a:Lcom/google/android/play/core/splitcompat/t;

    iput-object p3, p0, Lcom/google/android/play/core/splitcompat/h;->b:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/play/core/splitcompat/h;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/zip/ZipFile;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/play/core/splitcompat/h;->d:Lcom/google/android/play/core/splitcompat/n;

    iget-object v0, p0, Lcom/google/android/play/core/splitcompat/h;->a:Lcom/google/android/play/core/splitcompat/t;

    new-instance v1, Lcom/google/android/play/core/splitcompat/g;

    invoke-direct {v1, p0}, Lcom/google/android/play/core/splitcompat/g;-><init>(Lcom/google/android/play/core/splitcompat/h;)V

    invoke-static {p1, v0, p2, v1}, Lcom/google/android/play/core/splitcompat/n;->d(Lcom/google/android/play/core/splitcompat/n;Lcom/google/android/play/core/splitcompat/t;Ljava/util/Set;Lcom/google/android/play/core/splitcompat/l;)V

    return-void
.end method
