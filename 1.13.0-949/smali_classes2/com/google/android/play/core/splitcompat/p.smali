.class final Lcom/google/android/play/core/splitcompat/p;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/splitinstall/d1;


# instance fields
.field final synthetic a:Lcom/google/android/play/core/splitcompat/a;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitcompat/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/splitcompat/p;->a:Lcom/google/android/play/core/splitcompat/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/splitcompat/p;->a:Lcom/google/android/play/core/splitcompat/a;

    invoke-static {v0}, Lcom/google/android/play/core/splitcompat/a;->d(Lcom/google/android/play/core/splitcompat/a;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
