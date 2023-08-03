.class public interface abstract Lcom/google/mlkit/nl/languageid/c;
.super Ljava/lang/Object;
.source "com.google.mlkit:language-id-common@@16.0.0"

# interfaces
.implements Ljava/io/Closeable;
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field public static final N0:Ljava/lang/String; = "und"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final O0:F = 0.5f

.field public static final P0:F = 0.01f


# virtual methods
.method public abstract Z(Ljava/lang/String;)Lcom/google/android/gms/tasks/k;
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
            ")",
            "Lcom/google/android/gms/tasks/k<",
            "Ljava/util/List<",
            "Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract close()V
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation
.end method

.method public abstract i0(Ljava/lang/String;)Lcom/google/android/gms/tasks/k;
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
            ")",
            "Lcom/google/android/gms/tasks/k<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
