.class public final synthetic Lcom/google/android/play/core/assetpacks/j4;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/assetpacks/k4;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/google/android/play/core/tasks/o;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/k4;Ljava/lang/String;Lcom/google/android/play/core/tasks/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/j4;->a:Lcom/google/android/play/core/assetpacks/k4;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/j4;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/j4;->c:Lcom/google/android/play/core/tasks/o;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/j4;->a:Lcom/google/android/play/core/assetpacks/k4;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/j4;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/j4;->c:Lcom/google/android/play/core/tasks/o;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/core/assetpacks/k4;->o(Ljava/lang/String;Lcom/google/android/play/core/tasks/o;)V

    return-void
.end method
