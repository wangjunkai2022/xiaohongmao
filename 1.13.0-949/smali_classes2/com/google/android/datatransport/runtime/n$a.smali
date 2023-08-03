.class public abstract Lcom/google/android/datatransport/runtime/n$a;
.super Ljava/lang/Object;
.source "SendRequest.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/google/android/datatransport/runtime/n;
.end method

.method abstract b(Lcom/google/android/datatransport/c;)Lcom/google/android/datatransport/runtime/n$a;
.end method

.method abstract c(Lcom/google/android/datatransport/d;)Lcom/google/android/datatransport/runtime/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/d<",
            "*>;)",
            "Lcom/google/android/datatransport/runtime/n$a;"
        }
    .end annotation
.end method

.method public d(Lcom/google/android/datatransport/d;Lcom/google/android/datatransport/c;Lcom/google/android/datatransport/f;)Lcom/google/android/datatransport/runtime/n$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/datatransport/d<",
            "TT;>;",
            "Lcom/google/android/datatransport/c;",
            "Lcom/google/android/datatransport/f<",
            "TT;[B>;)",
            "Lcom/google/android/datatransport/runtime/n$a;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/datatransport/runtime/n$a;->c(Lcom/google/android/datatransport/d;)Lcom/google/android/datatransport/runtime/n$a;

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/datatransport/runtime/n$a;->b(Lcom/google/android/datatransport/c;)Lcom/google/android/datatransport/runtime/n$a;

    .line 3
    invoke-virtual {p0, p3}, Lcom/google/android/datatransport/runtime/n$a;->e(Lcom/google/android/datatransport/f;)Lcom/google/android/datatransport/runtime/n$a;

    return-object p0
.end method

.method abstract e(Lcom/google/android/datatransport/f;)Lcom/google/android/datatransport/runtime/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/f<",
            "*[B>;)",
            "Lcom/google/android/datatransport/runtime/n$a;"
        }
    .end annotation
.end method

.method public abstract f(Lcom/google/android/datatransport/runtime/o;)Lcom/google/android/datatransport/runtime/n$a;
.end method

.method public abstract g(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/n$a;
.end method
