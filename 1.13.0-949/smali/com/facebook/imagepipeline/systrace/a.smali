.class public Lcom/facebook/imagepipeline/systrace/a;
.super Ljava/lang/Object;
.source "DefaultFrescoSystrace.java"

# interfaces
.implements Lcom/facebook/imagepipeline/systrace/b$d;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/systrace/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/facebook/imagepipeline/systrace/b$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    sget-object p1, Lcom/facebook/imagepipeline/systrace/b;->a:Lcom/facebook/imagepipeline/systrace/b$b;

    return-object p1
.end method

.method public e()V
    .locals 0

    return-void
.end method
