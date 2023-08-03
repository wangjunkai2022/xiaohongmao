.class public interface abstract Lcom/google/mlkit/nl/languageid/internal/b;
.super Ljava/lang/Object;
.source "com.google.mlkit:language-id-common@@16.0.0"


# annotations
.annotation build Lu2/a;
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;F)Ljava/util/List;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)",
            "Ljava/util/List<",
            "Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation
.end method

.method public abstract b()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation
.end method

.method public abstract release()V
    .annotation build Lu2/a;
    .end annotation
.end method
