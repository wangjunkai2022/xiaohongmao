.class public interface abstract Ll0/a;
.super Ljava/lang/Object;
.source "CallerContextVerifier.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/Object;Z)V
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callerContext",
            "isPrefetch"
        }
    .end annotation
.end method
