.class public Lcom/google/android/datatransport/cct/CctBackendFactory;
.super Ljava/lang/Object;
.source "CctBackendFactory.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/backends/d;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/google/android/datatransport/runtime/backends/h;)Lcom/google/android/datatransport/runtime/backends/m;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/datatransport/cct/d;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/backends/h;->c()Landroid/content/Context;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/backends/h;->f()Lcom/google/android/datatransport/runtime/time/a;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/backends/h;->e()Lcom/google/android/datatransport/runtime/time/a;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/datatransport/cct/d;-><init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/time/a;Lcom/google/android/datatransport/runtime/time/a;)V

    return-object v0
.end method
