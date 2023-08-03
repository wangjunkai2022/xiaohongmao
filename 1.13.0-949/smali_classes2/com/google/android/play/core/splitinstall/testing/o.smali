.class public final synthetic Lcom/google/android/play/core/splitinstall/testing/o;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/splitinstall/testing/a;

.field public final synthetic b:Lcom/google/android/play/core/splitinstall/f;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/splitinstall/testing/a;Lcom/google/android/play/core/splitinstall/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/testing/o;->a:Lcom/google/android/play/core/splitinstall/testing/a;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/testing/o;->b:Lcom/google/android/play/core/splitinstall/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/o;->a:Lcom/google/android/play/core/splitinstall/testing/a;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/testing/o;->b:Lcom/google/android/play/core/splitinstall/f;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/splitinstall/testing/a;->v(Lcom/google/android/play/core/splitinstall/f;)V

    return-void
.end method
