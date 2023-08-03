.class public interface abstract annotation Lc2/e;
.super Ljava/lang/Object;
.source "JsonPOJOBuilder.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/a;
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lc2/e;
        buildMethodName = "build"
        withPrefix = "with"
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc2/e$a;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final G:Ljava/lang/String; = "build"

.field public static final H:Ljava/lang/String; = "with"


# virtual methods
.method public abstract buildMethodName()Ljava/lang/String;
.end method

.method public abstract withPrefix()Ljava/lang/String;
.end method
