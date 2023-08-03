.class public final synthetic Lcom/google/android/play/core/splitinstall/testing/s;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/internal/n1;


# instance fields
.field public final synthetic a:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/testing/s;->a:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/s;->a:Ljava/io/File;

    invoke-static {v0}, Lcom/google/android/play/core/splitinstall/testing/a0;->a(Ljava/io/File;)Lcom/google/android/play/core/splitinstall/testing/v;

    move-result-object v0

    return-object v0
.end method
