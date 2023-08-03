.class public interface abstract annotation Lr7/o;
.super Ljava/lang/Object;
.source "Syntax.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lr7/o;
        when = .enum Ljavax/annotation/meta/When;->ALWAYS:Ljavax/annotation/meta/When;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lt7/c;
    applicableTo = Ljava/lang/CharSequence;
.end annotation


# virtual methods
.method public abstract value()Ljava/lang/String;
.end method

.method public abstract when()Ljavax/annotation/meta/When;
.end method
