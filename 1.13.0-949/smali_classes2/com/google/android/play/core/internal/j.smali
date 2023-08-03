.class public final synthetic Lcom/google/android/play/core/internal/j;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/internal/t;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/internal/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/internal/j;->a:Lcom/google/android/play/core/internal/t;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/internal/j;->a:Lcom/google/android/play/core/internal/t;

    invoke-static {v0}, Lcom/google/android/play/core/internal/t;->i(Lcom/google/android/play/core/internal/t;)V

    return-void
.end method
