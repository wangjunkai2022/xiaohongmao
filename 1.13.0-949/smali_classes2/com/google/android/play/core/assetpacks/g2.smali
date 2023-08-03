.class public final synthetic Lcom/google/android/play/core/assetpacks/g2;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/assetpacks/n2;


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/assetpacks/o2;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/o2;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/g2;->a:Lcom/google/android/play/core/assetpacks/o2;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/g2;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/g2;->a:Lcom/google/android/play/core/assetpacks/o2;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/g2;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/o2;->i(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
