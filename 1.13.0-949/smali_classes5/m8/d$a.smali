.class public interface abstract annotation Lm8/d$a;
.super Ljava/lang/Object;
.source "Debug.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lm8/d$a;
        childrenArray = ""
        hasChildren = ""
        text = ""
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm8/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "a"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract childrenArray()Ljava/lang/String;
    .annotation build Lm8/f;
    .end annotation

    .annotation build Lorg/intellij/lang/annotations/Language;
        prefix = "class Renderer{Object[] $childrenArray(){return "
        suffix = ";}}"
        value = "JAVA"
    .end annotation
.end method

.method public abstract hasChildren()Ljava/lang/String;
    .annotation build Lm8/f;
    .end annotation

    .annotation build Lorg/intellij/lang/annotations/Language;
        prefix = "class Renderer{boolean $hasChildren(){return "
        suffix = ";}}"
        value = "JAVA"
    .end annotation
.end method

.method public abstract text()Ljava/lang/String;
    .annotation build Lm8/f;
    .end annotation

    .annotation build Lorg/intellij/lang/annotations/Language;
        prefix = "class Renderer{String $text(){return "
        suffix = ";}}"
        value = "JAVA"
    .end annotation
.end method
