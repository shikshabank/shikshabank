.class public Lcom/google/appinventor/components/runtime/ImageBot;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "ImageBot.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    androidMinSdk = 0x9
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    iconName = "images/paintpalette.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "protobuf-java-3.0.0.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/ImageBot$ImageException;
    }
.end annotation


# static fields
.field private static final COMODO_ROOT:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIENjCCAx6gAwIBAgIBATANBgkqhkiG9w0BAQUFADBvMQswCQYDVQQGEwJTRTEU\nMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFkZFRydXN0IEV4dGVybmFs\nIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBFeHRlcm5hbCBDQSBSb290\nMB4XDTAwMDUzMDEwNDgzOFoXDTIwMDUzMDEwNDgzOFowbzELMAkGA1UEBhMCU0Ux\nFDASBgNVBAoTC0FkZFRydXN0IEFCMSYwJAYDVQQLEx1BZGRUcnVzdCBFeHRlcm5h\nbCBUVFAgTmV0d29yazEiMCAGA1UEAxMZQWRkVHJ1c3QgRXh0ZXJuYWwgQ0EgUm9v\ndDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALf3GjPm8gAELTngTlvt\nH7xsD821+iO2zt6bETOXpClMfZOfvUq8k+0DGuOPz+VtUFrWlymUWoCwSXrbLpX9\nuMq/NzgtHj6RQa1wVsfwTz/oMp50ysiQVOnGXw94nZpAPA6sYapeFI+eh6FqUNzX\nmk6vBbOmcZSccbNQYArHE504B4YCqOmoaSYYkKtMsE8jqzpPhNjfzp/haW+710LX\na0Tkx63ubUFfclpxCDezeWWkWaCUN/cALw3CknLa0Dhy2xSoRcRdKn23tNbE7qzN\nE0S3ySvdQwAl+mG5aWpYIxG3pzOPVnVZ9c0p10a3CitlttNCbxWyuHv77+ldU9U0\nWicCAwEAAaOB3DCB2TAdBgNVHQ4EFgQUrb2YejS0Jvf6xCZU7wO94CTLVBowCwYD\nVR0PBAQDAgEGMA8GA1UdEwEB/wQFMAMBAf8wgZkGA1UdIwSBkTCBjoAUrb2YejS0\nJvf6xCZU7wO94CTLVBqhc6RxMG8xCzAJBgNVBAYTAlNFMRQwEgYDVQQKEwtBZGRU\ncnVzdCBBQjEmMCQGA1UECxMdQWRkVHJ1c3QgRXh0ZXJuYWwgVFRQIE5ldHdvcmsx\nIjAgBgNVBAMTGUFkZFRydXN0IEV4dGVybmFsIENBIFJvb3SCAQEwDQYJKoZIhvcN\nAQEFBQADggEBALCb4IUlwtYj4g+WBpKdQZic2YR5gdkeWxQHIzZlj7DYd7usQWxH\nYINRsPkyPef89iYTx4AWpb9a/IfPeHmJIZriTAcKhjW88t5RxNKWt9x+Tu5w/Rw5\n6wwCURQtjr0W4MHfRnXnJK3s9EK0hZNwEGe6nQY1ShjTK3rMUUKhemPR5ruhxSvC\nNr4TDea9Y355e6cJDUCrat2PisP29owaQgVR1EX1n6diIWgVIEM8med8vSTYqZEX\nc4g/VhsxOBi0cQ+azcgOno4uG+GMmIPLHzHxREzGBHNJdmAPx/i9F4BrLunMTA5a\nmnkPIAou1Z5jJh5VkpTYghdae9C8x49OhgQ=\n-----END CERTIFICATE-----\n"

.field private static final COMODO_USRTRUST:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIFdzCCBF+gAwIBAgIQE+oocFv07O0MNmMJgGFDNjANBgkqhkiG9w0BAQwFADBv\nMQswCQYDVQQGEwJTRTEUMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFk\nZFRydXN0IEV4dGVybmFsIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBF\neHRlcm5hbCBDQSBSb290MB4XDTAwMDUzMDEwNDgzOFoXDTIwMDUzMDEwNDgzOFow\ngYgxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpOZXcgSmVyc2V5MRQwEgYDVQQHEwtK\nZXJzZXkgQ2l0eTEeMBwGA1UEChMVVGhlIFVTRVJUUlVTVCBOZXR3b3JrMS4wLAYD\nVQQDEyVVU0VSVHJ1c3QgUlNBIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MIICIjAN\nBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAgBJlFzYOw9sIs9CsVw127c0n00yt\nUINh4qogTQktZAnczomfzD2p7PbPwdzx07HWezcoEStH2jnGvDoZtF+mvX2do2NC\ntnbyqTsrkfjib9DsFiCQCT7i6HTJGLSR1GJk23+jBvGIGGqQIjy8/hPwhxR79uQf\njtTkUcYRZ0YIUcuGFFQ/vDP+fmyc/xadGL1RjjWmp2bIcmfbIWax1Jt4A8BQOujM\n8Ny8nkz+rwWWNR9XWrf/zvk9tyy29lTdyOcSOk2uTIq3XJq0tyA9yn8iNK5+O2hm\nAUTnAU5GU5szYPeUvlM3kHND8zLDU+/bqv50TmnHa4xgk97Exwzf4TKuzJM7UXiV\nZ4vuPVb+DNBpDxsP8yUmazNt925H+nND5X4OpWaxKXwyhGNVicQNwZNUMBkTrNN9\nN6frXTpsNVzbQdcS2qlJC9/YgIoJk2KOtWbPJYjNhLixP6Q5D9kCnusSTJV882sF\nqV4Wg8y4Z+LoE53MW4LTTLPtW//e5XOsIzstAL81VXQJSdhJWBp/kjbmUZIO8yZ9\nHE0XvMnsQybQv0FfQKlERPSZ51eHnlAfV1SoPv10Yy+xUGUJ5lhCLkMaTLTwJUdZ\n+gQek9QmRkpQgbLevni3/GcV4clXhB4PY9bpYrrWX1Uu6lzGKAgEJTm4Diup8kyX\nHAc/DVL17e8vgg8CAwEAAaOB9DCB8TAfBgNVHSMEGDAWgBStvZh6NLQm9/rEJlTv\nA73gJMtUGjAdBgNVHQ4EFgQUU3m/WqorSs9UgOHYm8Cd8rIDZsswDgYDVR0PAQH/\nBAQDAgGGMA8GA1UdEwEB/wQFMAMBAf8wEQYDVR0gBAowCDAGBgRVHSAAMEQGA1Ud\nHwQ9MDswOaA3oDWGM2h0dHA6Ly9jcmwudXNlcnRydXN0LmNvbS9BZGRUcnVzdEV4\ndGVybmFsQ0FSb290LmNybDA1BggrBgEFBQcBAQQpMCcwJQYIKwYBBQUHMAGGGWh0\ndHA6Ly9vY3NwLnVzZXJ0cnVzdC5jb20wDQYJKoZIhvcNAQEMBQADggEBAJNl9jeD\nlQ9ew4IcH9Z35zyKwKoJ8OkLJvHgwmp1ocd5yblSYMgpEg7wrQPWCcR23+WmgZWn\nRtqCV6mVksW2jwMibDN3wXsyF24HzloUQToFJBv2FAY7qCUkDrvMKnXduXBBP3zQ\nYzYhBx9G/2CkkeFnvN4ffhkUyWNnkepnB2u0j4vAbkN9w6GAbLIevFOFfdyQoaS8\nLe9Gclc1Bb+7RrtubTeZtv8jkpHGbkD4jylW6l/VXxRTrPBPYer3IsynVgviuDQf\nJtl7GQVoP7o81DgGotPmjw7jtHFtQELFhLRAlSv0ZaBIefYdgWOWnU914Ph85I6p\n0fKtirOMxyHNwu8=\n-----END CERTIFICATE-----\n"

.field private static final DEBUG:Z = false

.field private static final IMAGEBOT_SERVICE_URL:Ljava/lang/String; = "https://chatbot.appinventor.mit.edu/image/v1"

.field private static final ISRG_ROOT_X1:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIFazCCA1OgAwIBAgIRAIIQz7DSQONZRGPgu2OCiwAwDQYJKoZIhvcNAQELBQAw\nTzELMAkGA1UEBhMCVVMxKTAnBgNVBAoTIEludGVybmV0IFNlY3VyaXR5IFJlc2Vh\ncmNoIEdyb3VwMRUwEwYDVQQDEwxJU1JHIFJvb3QgWDEwHhcNMTUwNjA0MTEwNDM4\nWhcNMzUwNjA0MTEwNDM4WjBPMQswCQYDVQQGEwJVUzEpMCcGA1UEChMgSW50ZXJu\nZXQgU2VjdXJpdHkgUmVzZWFyY2ggR3JvdXAxFTATBgNVBAMTDElTUkcgUm9vdCBY\nMTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAK3oJHP0FDfzm54rVygc\nh77ct984kIxuPOZXoHj3dcKi/vVqbvYATyjb3miGbESTtrFj/RQSa78f0uoxmyF+\n0TM8ukj13Xnfs7j/EvEhmkvBioZxaUpmZmyPfjxwv60pIgbz5MDmgK7iS4+3mX6U\nA5/TR5d8mUgjU+g4rk8Kb4Mu0UlXjIB0ttov0DiNewNwIRt18jA8+o+u3dpjq+sW\nT8KOEUt+zwvo/7V3LvSye0rgTBIlDHCNAymg4VMk7BPZ7hm/ELNKjD+Jo2FR3qyH\nB5T0Y3HsLuJvW5iB4YlcNHlsdu87kGJ55tukmi8mxdAQ4Q7e2RCOFvu396j3x+UC\nB5iPNgiV5+I3lg02dZ77DnKxHZu8A/lJBdiB3QW0KtZB6awBdpUKD9jf1b0SHzUv\nKBds0pjBqAlkd25HN7rOrFleaJ1/ctaJxQZBKT5ZPt0m9STJEadao0xAH0ahmbWn\nOlFuhjuefXKnEgV4We0+UXgVCwOPjdAvBbI+e0ocS3MFEvzG6uBQE3xDk3SzynTn\njh8BCNAw1FtxNrQHusEwMFxIt4I7mKZ9YIqioymCzLq9gwQbooMDQaHWBfEbwrbw\nqHyGO0aoSCqI3Haadr8faqU9GY/rOPNk3sgrDQoo//fb4hVC1CLQJ13hef4Y53CI\nrU7m2Ys6xt0nUW7/vGT1M0NPAgMBAAGjQjBAMA4GA1UdDwEB/wQEAwIBBjAPBgNV\nHRMBAf8EBTADAQH/MB0GA1UdDgQWBBR5tFnme7bl5AFzgAiIyBpY9umbbjANBgkq\nhkiG9w0BAQsFAAOCAgEAVR9YqbyyqFDQDLHYGmkgJykIrGF1XIpu+ILlaS/V9lZL\nubhzEFnTIZd+50xx+7LSYK05qAvqFyFWhfFQDlnrzuBZ6brJFe+GnY+EgPbk6ZGQ\n3BebYhtF8GaV0nxvwuo77x/Py9auJ/GpsMiu/X1+mvoiBOv/2X/qkSsisRcOj/KK\nNFtY2PwByVS5uCbMiogziUwthDyC3+6WVwW6LLv3xLfHTjuCvjHIInNzktHCgKQ5\nORAzI4JMPJ+GslWYHb4phowim57iaztXOoJwTdwJx4nLCgdNbOhdjsnvzqvHu7Ur\nTkXWStAmzOVyyghqpZXjFaH3pO3JLF+l+/+sKAIuvtd7u+Nxe5AW0wdeRlN8NwdC\njNPElpzVmbUq4JUagEiuTDkHzsxHpFKVK7q4+63SM1N95R1NbdWhscdCb+ZAJzVc\noyi3B43njTOQ5yOf+1CceWxG1bQVs5ZufpsMljq4Ui0/1lvh+wjChP4kqKOJ2qxq\n4RgqsahDYVvTH9w7jXbyLeiNdd8XM2w9U/t7y0Ff/9yi0GE44Za4rF2LN9d11TPA\nmRGunUHBcnWEvgJBQl9nJEiU0Zsnvgc/ubhPgXRR4Xq37Z0j4r7g1SgEEzwxA57d\nemyPxgcYxn/eR44/KJ4EBs+lVDR3veyJm+kXQ99b21/+jh5Xos1AnX5iItreGCc=\n-----END CERTIFICATE-----\n"

.field public static final LOG_TAG:Ljava/lang/String;

.field private static final MIT_CA:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIFXjCCBEagAwIBAgIJAMLfrRWIaHLbMA0GCSqGSIb3DQEBCwUAMIHPMQswCQYD\nVQQGEwJVUzELMAkGA1UECBMCTUExEjAQBgNVBAcTCUNhbWJyaWRnZTEuMCwGA1UE\nChMlTWFzc2FjaHVzZXR0cyBJbnN0aXR1dGUgb2YgVGVjaG5vbG9neTEZMBcGA1UE\nCxMQTUlUIEFwcCBJbnZlbnRvcjEmMCQGA1UEAxMdQ2xvdWREQiBDZXJ0aWZpY2F0\nZSBBdXRob3JpdHkxEDAOBgNVBCkTB0Vhc3lSU0ExGjAYBgkqhkiG9w0BCQEWC2pp\nc0BtaXQuZWR1MB4XDTE3MTIyMjIyMzkyOVoXDTI3MTIyMDIyMzkyOVowgc8xCzAJ\nBgNVBAYTAlVTMQswCQYDVQQIEwJNQTESMBAGA1UEBxMJQ2FtYnJpZGdlMS4wLAYD\nVQQKEyVNYXNzYWNodXNldHRzIEluc3RpdHV0ZSBvZiBUZWNobm9sb2d5MRkwFwYD\nVQQLExBNSVQgQXBwIEludmVudG9yMSYwJAYDVQQDEx1DbG91ZERCIENlcnRpZmlj\nYXRlIEF1dGhvcml0eTEQMA4GA1UEKRMHRWFzeVJTQTEaMBgGCSqGSIb3DQEJARYL\namlzQG1pdC5lZHUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDHzI3D\nFobNDv2HTWlDdedmbxZIJYSqWlzdRJC3oVJgCubdAs46WJRqUxDRWft9UpYGMKkw\nmYN8mdPby2m5OJagdVIZgnguB71zIQkC8yMzd94FC3gldX5m7R014D/0fkpzvsSt\n6fsNectJT0k7gPELOH6t4u6AUbvIsEX0nNyRWsmA/ucXCsDBwXyBJxfOKIQ9tDI4\n/WfcKk9JDpeMF7RP0CIOtlAPotKIaPoY1W3eMIi/0riOt5vTFsB8pxhxAVy0cfGX\niHukdrAkAJixTgkyS7wzk22xOeXVnRIzAMGK5xHMDw/HRQGTrUGfIXHENV3u+3Ae\nL5/ZoQwyZTixmQNzAgMBAAGjggE5MIIBNTAdBgNVHQ4EFgQUZfMKQXqtC5UJGFrZ\ngZE1nmlx+t8wggEEBgNVHSMEgfwwgfmAFGXzCkF6rQuVCRha2YGRNZ5pcfrfoYHV\npIHSMIHPMQswCQYDVQQGEwJVUzELMAkGA1UECBMCTUExEjAQBgNVBAcTCUNhbWJy\naWRnZTEuMCwGA1UEChMlTWFzc2FjaHVzZXR0cyBJbnN0aXR1dGUgb2YgVGVjaG5v\nbG9neTEZMBcGA1UECxMQTUlUIEFwcCBJbnZlbnRvcjEmMCQGA1UEAxMdQ2xvdWRE\nQiBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkxEDAOBgNVBCkTB0Vhc3lSU0ExGjAYBgkq\nhkiG9w0BCQEWC2ppc0BtaXQuZWR1ggkAwt+tFYhoctswDAYDVR0TBAUwAwEB/zAN\nBgkqhkiG9w0BAQsFAAOCAQEAIkKr3eIvwZO6a1Jsh3qXwveVnrqwxYvLw2IhTwNT\n/P6C5jbRnzUuDuzg5sEIpbBo/Bp3qIp7G5cdVOkIrqO7uCp6Kyc7d9lPsEe/cbF4\naNwNmdWroRN1y0tuMU6+z7frd5pOeAZP9E/DM/0Uaz4yVzwnlvZUttaLymyMhH54\nisGQKbAqHDFtKZvb6DxsHzrO2YgeaBAtjeVhPWiv8BhzbOo9+hhZvYHYtoM2W+Ze\nDHuvv0v+qouphftDKVBp16N8Pk5WgabTXzV6VcNee92iwbWYDEv06+S3AF/q2TBe\nxxXtAa5ywbp6IRF37QuQChcYnOx7zIylYI1PIENfQFC2BA==\n-----END CERTIFICATE-----\n"


# instance fields
.field private apiKey:Ljava/lang/String;

.field private invert:Z

.field private size:I

.field private sslSockFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private token:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$mdoCreateImage(Lcom/google/appinventor/components/runtime/ImageBot;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ImageBot;->doCreateImage(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoEditImage(Lcom/google/appinventor/components/runtime/ImageBot;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/ImageBot;->doEditImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 80
    const-class v0, Lcom/google/appinventor/components/runtime/ImageBot;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/ImageBot;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 227
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 217
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ImageBot;->apiKey:Ljava/lang/String;

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ImageBot;->invert:Z

    .line 219
    const/16 v0, 0x100

    iput v0, p0, Lcom/google/appinventor/components/runtime/ImageBot;->size:I

    .line 228
    return-void
.end method

.method private doCreateImage(Ljava/lang/String;)V
    .registers 11
    .param p1, "prompt"    # Ljava/lang/String;

    .line 435
    const-string v0, "Unable to create image"

    :try_start_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ImageBot;->token:Ljava/lang/String;

    if-eqz v1, :cond_21

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ImageBot;->token:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_21

    .line 436
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ImageBot;->token:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "iToken":Ljava/lang/String;
    goto :goto_23

    .line 438
    .end local v1    # "iToken":Ljava/lang/String;
    :cond_21
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ImageBot;->token:Ljava/lang/String;

    .line 440
    .restart local v1    # "iToken":Ljava/lang/String;
    :goto_23
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/Base58Util;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 441
    .local v2, "decodedToken":[B
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->parseFrom([B)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    move-result-object v3

    .line 442
    .local v3, "token":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->newBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v4

    .line 443
    invoke-virtual {v4, v3}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->setToken(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v4

    iget v5, p0, Lcom/google/appinventor/components/runtime/ImageBot;->size:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 444
    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->setSize(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v4

    sget-object v5, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;->CREATE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;

    .line 445
    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->setOperation(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v4

    .line 446
    invoke-virtual {v4, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->setPrompt(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v4

    .line 447
    .local v4, "builder":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ImageBot;->apiKey:Ljava/lang/String;

    if-eqz v5, :cond_61

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_61

    .line 448
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ImageBot;->apiKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->setApikey(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v5

    move-object v4, v5

    .line 450
    :cond_61
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->build()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    move-result-object v5
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_65} :catch_85

    .line 452
    .local v5, "request":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    :try_start_65
    invoke-direct {p0, v5}, Lcom/google/appinventor/components/runtime/ImageBot;->sendRequest(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;)Ljava/lang/String;

    move-result-object v6

    .line 453
    .local v6, "response":Ljava/lang/String;
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ImageBot;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v8, Lcom/google/appinventor/components/runtime/ImageBot$5;

    invoke-direct {v8, p0, v6}, Lcom/google/appinventor/components/runtime/ImageBot$5;-><init>(Lcom/google/appinventor/components/runtime/ImageBot;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_73
    .catch Lcom/google/appinventor/components/runtime/ImageBot$ImageException; {:try_start_65 .. :try_end_73} :catch_74
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_73} :catch_85

    .line 467
    .end local v6    # "response":Ljava/lang/String;
    goto :goto_84

    .line 459
    :catch_74
    move-exception v6

    .line 460
    .local v6, "e":Lcom/google/appinventor/components/runtime/ImageBot$ImageException;
    :try_start_75
    sget-object v7, Lcom/google/appinventor/components/runtime/ImageBot;->LOG_TAG:Ljava/lang/String;

    invoke-static {v7, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 461
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ImageBot;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v8, Lcom/google/appinventor/components/runtime/ImageBot$6;

    invoke-direct {v8, p0, v6}, Lcom/google/appinventor/components/runtime/ImageBot$6;-><init>(Lcom/google/appinventor/components/runtime/ImageBot;Lcom/google/appinventor/components/runtime/ImageBot$ImageException;)V

    invoke-virtual {v7, v8}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_84} :catch_85

    .line 476
    .end local v1    # "iToken":Ljava/lang/String;
    .end local v2    # "decodedToken":[B
    .end local v3    # "token":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;
    .end local v4    # "builder":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .end local v5    # "request":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    .end local v6    # "e":Lcom/google/appinventor/components/runtime/ImageBot$ImageException;
    :goto_84
    goto :goto_95

    .line 468
    :catch_85
    move-exception v1

    .line 469
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/google/appinventor/components/runtime/ImageBot;->LOG_TAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 470
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageBot;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v2, Lcom/google/appinventor/components/runtime/ImageBot$7;

    invoke-direct {v2, p0, v1}, Lcom/google/appinventor/components/runtime/ImageBot$7;-><init>(Lcom/google/appinventor/components/runtime/ImageBot;Ljava/lang/Exception;)V

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 477
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_95
    return-void
.end method

.method private doEditImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 14
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "mask"    # Landroid/graphics/Bitmap;
    .param p3, "description"    # Ljava/lang/String;

    .line 480
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 481
    .local v0, "sourceBuffer":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 482
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 484
    .local v1, "sourceString":Lcom/google/protobuf/ByteString;
    const/4 v3, 0x0

    .line 485
    .local v3, "maskString":Lcom/google/protobuf/ByteString;
    if-eqz p2, :cond_29

    .line 486
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 487
    .local v4, "maskBuffer":Ljava/io/ByteArrayOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, v5, v2, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 488
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 492
    .end local v4    # "maskBuffer":Ljava/io/ByteArrayOutputStream;
    :cond_29
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ImageBot;->token:Ljava/lang/String;

    if-eqz v2, :cond_48

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ImageBot;->token:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x25

    if-ne v2, v4, :cond_48

    .line 493
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ImageBot;->token:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "iToken":Ljava/lang/String;
    goto :goto_4a

    .line 495
    .end local v2    # "iToken":Ljava/lang/String;
    :cond_48
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ImageBot;->token:Ljava/lang/String;

    .line 499
    .restart local v2    # "iToken":Ljava/lang/String;
    :goto_4a
    :try_start_4a
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/Base58Util;->decode(Ljava/lang/String;)[B

    move-result-object v4

    .line 500
    .local v4, "decodedToken":[B
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->parseFrom([B)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    move-result-object v5
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_52} :catch_b8

    move-object v4, v5

    .line 509
    .local v4, "token":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;
    nop

    .line 510
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->newBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v5

    .line 511
    invoke-virtual {v5, v4}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->setToken(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v5

    .line 512
    invoke-virtual {v5, v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->setSource(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v5

    sget-object v6, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;->EDIT:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;

    .line 513
    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->setOperation(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v5

    iget v6, p0, Lcom/google/appinventor/components/runtime/ImageBot;->size:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 514
    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->setSize(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v5

    .line 515
    invoke-virtual {v5, p3}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->setPrompt(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v5

    .line 516
    .local v5, "builder":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ImageBot;->apiKey:Ljava/lang/String;

    if-eqz v6, :cond_8d

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8d

    .line 517
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ImageBot;->apiKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->setApikey(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v5

    .line 519
    :cond_8d
    if-eqz v3, :cond_92

    .line 520
    invoke-virtual {v5, v3}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->setMask(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    .line 522
    :cond_92
    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->build()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    move-result-object v6

    .line 524
    .local v6, "request":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    :try_start_96
    invoke-direct {p0, v6}, Lcom/google/appinventor/components/runtime/ImageBot;->sendRequest(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;)Ljava/lang/String;

    move-result-object v7

    .line 525
    .local v7, "response":Ljava/lang/String;
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/ImageBot;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v9, Lcom/google/appinventor/components/runtime/ImageBot$9;

    invoke-direct {v9, p0, v7}, Lcom/google/appinventor/components/runtime/ImageBot$9;-><init>(Lcom/google/appinventor/components/runtime/ImageBot;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_a4
    .catch Lcom/google/appinventor/components/runtime/ImageBot$ImageException; {:try_start_96 .. :try_end_a4} :catch_a5

    .line 539
    .end local v7    # "response":Ljava/lang/String;
    goto :goto_b7

    .line 531
    :catch_a5
    move-exception v7

    .line 532
    .local v7, "e":Lcom/google/appinventor/components/runtime/ImageBot$ImageException;
    sget-object v8, Lcom/google/appinventor/components/runtime/ImageBot;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Unable to edit image"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 533
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/ImageBot;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v9, Lcom/google/appinventor/components/runtime/ImageBot$10;

    invoke-direct {v9, p0, v7}, Lcom/google/appinventor/components/runtime/ImageBot$10;-><init>(Lcom/google/appinventor/components/runtime/ImageBot;Lcom/google/appinventor/components/runtime/ImageBot$ImageException;)V

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 540
    .end local v7    # "e":Lcom/google/appinventor/components/runtime/ImageBot$ImageException;
    :goto_b7
    return-void

    .line 501
    .end local v4    # "token":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;
    .end local v5    # "builder":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .end local v6    # "request":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    :catch_b8
    move-exception v4

    .line 502
    .local v4, "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ImageBot;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v6, Lcom/google/appinventor/components/runtime/ImageBot$8;

    invoke-direct {v6, p0}, Lcom/google/appinventor/components/runtime/ImageBot$8;-><init>(Lcom/google/appinventor/components/runtime/ImageBot;)V

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 508
    return-void
.end method

.method private declared-synchronized ensureSslSockFactory()V
    .registers 16

    monitor-enter p0

    .line 642
    :try_start_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageBot;->sslSockFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_da

    if-nez v0, :cond_d8

    .line 644
    :try_start_5
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 645
    .local v0, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "-----BEGIN CERTIFICATE-----\nMIIENjCCAx6gAwIBAgIBATANBgkqhkiG9w0BAQUFADBvMQswCQYDVQQGEwJTRTEU\nMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFkZFRydXN0IEV4dGVybmFs\nIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBFeHRlcm5hbCBDQSBSb290\nMB4XDTAwMDUzMDEwNDgzOFoXDTIwMDUzMDEwNDgzOFowbzELMAkGA1UEBhMCU0Ux\nFDASBgNVBAoTC0FkZFRydXN0IEFCMSYwJAYDVQQLEx1BZGRUcnVzdCBFeHRlcm5h\nbCBUVFAgTmV0d29yazEiMCAGA1UEAxMZQWRkVHJ1c3QgRXh0ZXJuYWwgQ0EgUm9v\ndDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALf3GjPm8gAELTngTlvt\nH7xsD821+iO2zt6bETOXpClMfZOfvUq8k+0DGuOPz+VtUFrWlymUWoCwSXrbLpX9\nuMq/NzgtHj6RQa1wVsfwTz/oMp50ysiQVOnGXw94nZpAPA6sYapeFI+eh6FqUNzX\nmk6vBbOmcZSccbNQYArHE504B4YCqOmoaSYYkKtMsE8jqzpPhNjfzp/haW+710LX\na0Tkx63ubUFfclpxCDezeWWkWaCUN/cALw3CknLa0Dhy2xSoRcRdKn23tNbE7qzN\nE0S3ySvdQwAl+mG5aWpYIxG3pzOPVnVZ9c0p10a3CitlttNCbxWyuHv77+ldU9U0\nWicCAwEAAaOB3DCB2TAdBgNVHQ4EFgQUrb2YejS0Jvf6xCZU7wO94CTLVBowCwYD\nVR0PBAQDAgEGMA8GA1UdEwEB/wQFMAMBAf8wgZkGA1UdIwSBkTCBjoAUrb2YejS0\nJvf6xCZU7wO94CTLVBqhc6RxMG8xCzAJBgNVBAYTAlNFMRQwEgYDVQQKEwtBZGRU\ncnVzdCBBQjEmMCQGA1UECxMdQWRkVHJ1c3QgRXh0ZXJuYWwgVFRQIE5ldHdvcmsx\nIjAgBgNVBAMTGUFkZFRydXN0IEV4dGVybmFsIENBIFJvb3SCAQEwDQYJKoZIhvcN\nAQEFBQADggEBALCb4IUlwtYj4g+WBpKdQZic2YR5gdkeWxQHIzZlj7DYd7usQWxH\nYINRsPkyPef89iYTx4AWpb9a/IfPeHmJIZriTAcKhjW88t5RxNKWt9x+Tu5w/Rw5\n6wwCURQtjr0W4MHfRnXnJK3s9EK0hZNwEGe6nQY1ShjTK3rMUUKhemPR5ruhxSvC\nNr4TDea9Y355e6cJDUCrat2PisP29owaQgVR1EX1n6diIWgVIEM8med8vSTYqZEX\nc4g/VhsxOBi0cQ+azcgOno4uG+GMmIPLHzHxREzGBHNJdmAPx/i9F4BrLunMTA5a\nmnkPIAou1Z5jJh5VkpTYghdae9C8x49OhgQ=\n-----END CERTIFICATE-----\n"

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 646
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 647
    .local v1, "caInput":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    .line 648
    .local v2, "ca":Ljava/security/cert/Certificate;
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 649
    new-instance v3, Ljava/io/ByteArrayInputStream;

    const-string v4, "-----BEGIN CERTIFICATE-----\nMIIFdzCCBF+gAwIBAgIQE+oocFv07O0MNmMJgGFDNjANBgkqhkiG9w0BAQwFADBv\nMQswCQYDVQQGEwJTRTEUMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFk\nZFRydXN0IEV4dGVybmFsIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBF\neHRlcm5hbCBDQSBSb290MB4XDTAwMDUzMDEwNDgzOFoXDTIwMDUzMDEwNDgzOFow\ngYgxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpOZXcgSmVyc2V5MRQwEgYDVQQHEwtK\nZXJzZXkgQ2l0eTEeMBwGA1UEChMVVGhlIFVTRVJUUlVTVCBOZXR3b3JrMS4wLAYD\nVQQDEyVVU0VSVHJ1c3QgUlNBIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MIICIjAN\nBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAgBJlFzYOw9sIs9CsVw127c0n00yt\nUINh4qogTQktZAnczomfzD2p7PbPwdzx07HWezcoEStH2jnGvDoZtF+mvX2do2NC\ntnbyqTsrkfjib9DsFiCQCT7i6HTJGLSR1GJk23+jBvGIGGqQIjy8/hPwhxR79uQf\njtTkUcYRZ0YIUcuGFFQ/vDP+fmyc/xadGL1RjjWmp2bIcmfbIWax1Jt4A8BQOujM\n8Ny8nkz+rwWWNR9XWrf/zvk9tyy29lTdyOcSOk2uTIq3XJq0tyA9yn8iNK5+O2hm\nAUTnAU5GU5szYPeUvlM3kHND8zLDU+/bqv50TmnHa4xgk97Exwzf4TKuzJM7UXiV\nZ4vuPVb+DNBpDxsP8yUmazNt925H+nND5X4OpWaxKXwyhGNVicQNwZNUMBkTrNN9\nN6frXTpsNVzbQdcS2qlJC9/YgIoJk2KOtWbPJYjNhLixP6Q5D9kCnusSTJV882sF\nqV4Wg8y4Z+LoE53MW4LTTLPtW//e5XOsIzstAL81VXQJSdhJWBp/kjbmUZIO8yZ9\nHE0XvMnsQybQv0FfQKlERPSZ51eHnlAfV1SoPv10Yy+xUGUJ5lhCLkMaTLTwJUdZ\n+gQek9QmRkpQgbLevni3/GcV4clXhB4PY9bpYrrWX1Uu6lzGKAgEJTm4Diup8kyX\nHAc/DVL17e8vgg8CAwEAAaOB9DCB8TAfBgNVHSMEGDAWgBStvZh6NLQm9/rEJlTv\nA73gJMtUGjAdBgNVHQ4EFgQUU3m/WqorSs9UgOHYm8Cd8rIDZsswDgYDVR0PAQH/\nBAQDAgGGMA8GA1UdEwEB/wQFMAMBAf8wEQYDVR0gBAowCDAGBgRVHSAAMEQGA1Ud\nHwQ9MDswOaA3oDWGM2h0dHA6Ly9jcmwudXNlcnRydXN0LmNvbS9BZGRUcnVzdEV4\ndGVybmFsQ0FSb290LmNybDA1BggrBgEFBQcBAQQpMCcwJQYIKwYBBQUHMAGGGWh0\ndHA6Ly9vY3NwLnVzZXJ0cnVzdC5jb20wDQYJKoZIhvcNAQEMBQADggEBAJNl9jeD\nlQ9ew4IcH9Z35zyKwKoJ8OkLJvHgwmp1ocd5yblSYMgpEg7wrQPWCcR23+WmgZWn\nRtqCV6mVksW2jwMibDN3wXsyF24HzloUQToFJBv2FAY7qCUkDrvMKnXduXBBP3zQ\nYzYhBx9G/2CkkeFnvN4ffhkUyWNnkepnB2u0j4vAbkN9w6GAbLIevFOFfdyQoaS8\nLe9Gclc1Bb+7RrtubTeZtv8jkpHGbkD4jylW6l/VXxRTrPBPYer3IsynVgviuDQf\nJtl7GQVoP7o81DgGotPmjw7jtHFtQELFhLRAlSv0ZaBIefYdgWOWnU914Ph85I6p\n0fKtirOMxyHNwu8=\n-----END CERTIFICATE-----\n"

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v1, v3

    .line 650
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    .line 651
    .local v3, "inter":Ljava/security/cert/Certificate;
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 652
    new-instance v4, Ljava/io/ByteArrayInputStream;

    const-string v5, "-----BEGIN CERTIFICATE-----\nMIIFXjCCBEagAwIBAgIJAMLfrRWIaHLbMA0GCSqGSIb3DQEBCwUAMIHPMQswCQYD\nVQQGEwJVUzELMAkGA1UECBMCTUExEjAQBgNVBAcTCUNhbWJyaWRnZTEuMCwGA1UE\nChMlTWFzc2FjaHVzZXR0cyBJbnN0aXR1dGUgb2YgVGVjaG5vbG9neTEZMBcGA1UE\nCxMQTUlUIEFwcCBJbnZlbnRvcjEmMCQGA1UEAxMdQ2xvdWREQiBDZXJ0aWZpY2F0\nZSBBdXRob3JpdHkxEDAOBgNVBCkTB0Vhc3lSU0ExGjAYBgkqhkiG9w0BCQEWC2pp\nc0BtaXQuZWR1MB4XDTE3MTIyMjIyMzkyOVoXDTI3MTIyMDIyMzkyOVowgc8xCzAJ\nBgNVBAYTAlVTMQswCQYDVQQIEwJNQTESMBAGA1UEBxMJQ2FtYnJpZGdlMS4wLAYD\nVQQKEyVNYXNzYWNodXNldHRzIEluc3RpdHV0ZSBvZiBUZWNobm9sb2d5MRkwFwYD\nVQQLExBNSVQgQXBwIEludmVudG9yMSYwJAYDVQQDEx1DbG91ZERCIENlcnRpZmlj\nYXRlIEF1dGhvcml0eTEQMA4GA1UEKRMHRWFzeVJTQTEaMBgGCSqGSIb3DQEJARYL\namlzQG1pdC5lZHUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDHzI3D\nFobNDv2HTWlDdedmbxZIJYSqWlzdRJC3oVJgCubdAs46WJRqUxDRWft9UpYGMKkw\nmYN8mdPby2m5OJagdVIZgnguB71zIQkC8yMzd94FC3gldX5m7R014D/0fkpzvsSt\n6fsNectJT0k7gPELOH6t4u6AUbvIsEX0nNyRWsmA/ucXCsDBwXyBJxfOKIQ9tDI4\n/WfcKk9JDpeMF7RP0CIOtlAPotKIaPoY1W3eMIi/0riOt5vTFsB8pxhxAVy0cfGX\niHukdrAkAJixTgkyS7wzk22xOeXVnRIzAMGK5xHMDw/HRQGTrUGfIXHENV3u+3Ae\nL5/ZoQwyZTixmQNzAgMBAAGjggE5MIIBNTAdBgNVHQ4EFgQUZfMKQXqtC5UJGFrZ\ngZE1nmlx+t8wggEEBgNVHSMEgfwwgfmAFGXzCkF6rQuVCRha2YGRNZ5pcfrfoYHV\npIHSMIHPMQswCQYDVQQGEwJVUzELMAkGA1UECBMCTUExEjAQBgNVBAcTCUNhbWJy\naWRnZTEuMCwGA1UEChMlTWFzc2FjaHVzZXR0cyBJbnN0aXR1dGUgb2YgVGVjaG5v\nbG9neTEZMBcGA1UECxMQTUlUIEFwcCBJbnZlbnRvcjEmMCQGA1UEAxMdQ2xvdWRE\nQiBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkxEDAOBgNVBCkTB0Vhc3lSU0ExGjAYBgkq\nhkiG9w0BCQEWC2ppc0BtaXQuZWR1ggkAwt+tFYhoctswDAYDVR0TBAUwAwEB/zAN\nBgkqhkiG9w0BAQsFAAOCAQEAIkKr3eIvwZO6a1Jsh3qXwveVnrqwxYvLw2IhTwNT\n/P6C5jbRnzUuDuzg5sEIpbBo/Bp3qIp7G5cdVOkIrqO7uCp6Kyc7d9lPsEe/cbF4\naNwNmdWroRN1y0tuMU6+z7frd5pOeAZP9E/DM/0Uaz4yVzwnlvZUttaLymyMhH54\nisGQKbAqHDFtKZvb6DxsHzrO2YgeaBAtjeVhPWiv8BhzbOo9+hhZvYHYtoM2W+Ze\nDHuvv0v+qouphftDKVBp16N8Pk5WgabTXzV6VcNee92iwbWYDEv06+S3AF/q2TBe\nxxXtAa5ywbp6IRF37QuQChcYnOx7zIylYI1PIENfQFC2BA==\n-----END CERTIFICATE-----\n"

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v1, v4

    .line 653
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    .line 654
    .local v4, "mitca":Ljava/security/cert/Certificate;
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 655
    new-instance v5, Ljava/io/ByteArrayInputStream;

    const-string v6, "-----BEGIN CERTIFICATE-----\nMIIFazCCA1OgAwIBAgIRAIIQz7DSQONZRGPgu2OCiwAwDQYJKoZIhvcNAQELBQAw\nTzELMAkGA1UEBhMCVVMxKTAnBgNVBAoTIEludGVybmV0IFNlY3VyaXR5IFJlc2Vh\ncmNoIEdyb3VwMRUwEwYDVQQDEwxJU1JHIFJvb3QgWDEwHhcNMTUwNjA0MTEwNDM4\nWhcNMzUwNjA0MTEwNDM4WjBPMQswCQYDVQQGEwJVUzEpMCcGA1UEChMgSW50ZXJu\nZXQgU2VjdXJpdHkgUmVzZWFyY2ggR3JvdXAxFTATBgNVBAMTDElTUkcgUm9vdCBY\nMTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAK3oJHP0FDfzm54rVygc\nh77ct984kIxuPOZXoHj3dcKi/vVqbvYATyjb3miGbESTtrFj/RQSa78f0uoxmyF+\n0TM8ukj13Xnfs7j/EvEhmkvBioZxaUpmZmyPfjxwv60pIgbz5MDmgK7iS4+3mX6U\nA5/TR5d8mUgjU+g4rk8Kb4Mu0UlXjIB0ttov0DiNewNwIRt18jA8+o+u3dpjq+sW\nT8KOEUt+zwvo/7V3LvSye0rgTBIlDHCNAymg4VMk7BPZ7hm/ELNKjD+Jo2FR3qyH\nB5T0Y3HsLuJvW5iB4YlcNHlsdu87kGJ55tukmi8mxdAQ4Q7e2RCOFvu396j3x+UC\nB5iPNgiV5+I3lg02dZ77DnKxHZu8A/lJBdiB3QW0KtZB6awBdpUKD9jf1b0SHzUv\nKBds0pjBqAlkd25HN7rOrFleaJ1/ctaJxQZBKT5ZPt0m9STJEadao0xAH0ahmbWn\nOlFuhjuefXKnEgV4We0+UXgVCwOPjdAvBbI+e0ocS3MFEvzG6uBQE3xDk3SzynTn\njh8BCNAw1FtxNrQHusEwMFxIt4I7mKZ9YIqioymCzLq9gwQbooMDQaHWBfEbwrbw\nqHyGO0aoSCqI3Haadr8faqU9GY/rOPNk3sgrDQoo//fb4hVC1CLQJ13hef4Y53CI\nrU7m2Ys6xt0nUW7/vGT1M0NPAgMBAAGjQjBAMA4GA1UdDwEB/wQEAwIBBjAPBgNV\nHRMBAf8EBTADAQH/MB0GA1UdDgQWBBR5tFnme7bl5AFzgAiIyBpY9umbbjANBgkq\nhkiG9w0BAQsFAAOCAgEAVR9YqbyyqFDQDLHYGmkgJykIrGF1XIpu+ILlaS/V9lZL\nubhzEFnTIZd+50xx+7LSYK05qAvqFyFWhfFQDlnrzuBZ6brJFe+GnY+EgPbk6ZGQ\n3BebYhtF8GaV0nxvwuo77x/Py9auJ/GpsMiu/X1+mvoiBOv/2X/qkSsisRcOj/KK\nNFtY2PwByVS5uCbMiogziUwthDyC3+6WVwW6LLv3xLfHTjuCvjHIInNzktHCgKQ5\nORAzI4JMPJ+GslWYHb4phowim57iaztXOoJwTdwJx4nLCgdNbOhdjsnvzqvHu7Ur\nTkXWStAmzOVyyghqpZXjFaH3pO3JLF+l+/+sKAIuvtd7u+Nxe5AW0wdeRlN8NwdC\njNPElpzVmbUq4JUagEiuTDkHzsxHpFKVK7q4+63SM1N95R1NbdWhscdCb+ZAJzVc\noyi3B43njTOQ5yOf+1CceWxG1bQVs5ZufpsMljq4Ui0/1lvh+wjChP4kqKOJ2qxq\n4RgqsahDYVvTH9w7jXbyLeiNdd8XM2w9U/t7y0Ff/9yi0GE44Za4rF2LN9d11TPA\nmRGunUHBcnWEvgJBQl9nJEiU0Zsnvgc/ubhPgXRR4Xq37Z0j4r7g1SgEEzwxA57d\nemyPxgcYxn/eR44/KJ4EBs+lVDR3veyJm+kXQ99b21/+jh5Xos1AnX5iItreGCc=\n-----END CERTIFICATE-----\n"

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v1, v5

    .line 656
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    .line 657
    .local v5, "isrg":Ljava/security/cert/Certificate;
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 664
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .line 665
    .local v6, "keyStore":Ljava/security/KeyStore;
    const/4 v7, 0x0

    invoke-virtual {v6, v7, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 667
    const/4 v8, 0x1

    .line 668
    .local v8, "count":I
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ImageBot;->getSystemCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    :goto_71
    if-ge v11, v10, :cond_91

    aget-object v12, v9, v11

    .line 669
    .local v12, "cert":Ljava/security/cert/X509Certificate;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "root"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13, v12}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 670
    nop

    .end local v12    # "cert":Ljava/security/cert/X509Certificate;
    add-int/lit8 v8, v8, 0x1

    .line 668
    add-int/lit8 v11, v11, 0x1

    goto :goto_71

    .line 676
    .end local p0    # "this":Lcom/google/appinventor/components/runtime/ImageBot;
    :cond_91
    const-string v9, "comodo"

    invoke-virtual {v6, v9, v2}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 677
    const-string v9, "inter"

    invoke-virtual {v6, v9, v3}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 678
    const-string v9, "mitca"

    invoke-virtual {v6, v9, v4}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 679
    const-string v9, "isrg"

    invoke-virtual {v6, v9, v5}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 681
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v9

    .line 680
    invoke-static {v9}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v9

    .line 682
    .local v9, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v9, v6}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 692
    const-string v10, "TLS"

    invoke-static {v10}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v10

    .line 693
    .local v10, "ctx":Ljavax/net/ssl/SSLContext;
    invoke-virtual {v9}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v11

    invoke-virtual {v10, v7, v11, v7}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 694
    invoke-virtual {v10}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v7

    iput-object v7, p0, Lcom/google/appinventor/components/runtime/ImageBot;->sslSockFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c3} :catch_c4
    .catchall {:try_start_5 .. :try_end_c3} :catchall_da

    .line 698
    .end local v0    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v1    # "caInput":Ljava/io/ByteArrayInputStream;
    .end local v2    # "ca":Ljava/security/cert/Certificate;
    .end local v3    # "inter":Ljava/security/cert/Certificate;
    .end local v4    # "mitca":Ljava/security/cert/Certificate;
    .end local v5    # "isrg":Ljava/security/cert/Certificate;
    .end local v6    # "keyStore":Ljava/security/KeyStore;
    .end local v8    # "count":I
    .end local v9    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v10    # "ctx":Ljavax/net/ssl/SSLContext;
    goto :goto_d8

    .line 695
    :catch_c4
    move-exception v0

    .line 696
    .local v0, "e":Ljava/lang/Exception;
    :try_start_c5
    sget-object v1, Lcom/google/appinventor/components/runtime/ImageBot;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Could not setup SSL Trust Store for ImageBot"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 697
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v2, "Could Not setup SSL Trust Store for ImageBot: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
    :try_end_d8
    .catchall {:try_start_c5 .. :try_end_d8} :catchall_da

    .line 700
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_d8
    :goto_d8
    monitor-exit p0

    return-void

    .line 641
    :catchall_da
    move-exception v0

    monitor-exit p0

    goto :goto_de

    :goto_dd
    throw v0

    :goto_de
    goto :goto_dd
.end method

.method private getOutputFile()Ljava/io/File;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 626
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageBot;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ImageBot;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v2, v1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, "tempdir":Ljava/lang/String;
    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 628
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    .line 629
    :cond_1c
    const-string v1, "file:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 630
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 632
    :cond_29
    :goto_29
    sget-object v1, Lcom/google/appinventor/components/runtime/ImageBot;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tempdir = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "ImageBot"

    const-string v4, ".png"

    invoke-static {v3, v4, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 634
    .local v2, "outFile":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outfile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    return-object v2
.end method

.method private getSystemCertificates()[Ljava/security/cert/X509Certificate;
    .registers 5

    .line 708
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 707
    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 709
    .local v1, "otmf":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/security/KeyStore;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 710
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    aget-object v2, v2, v0

    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    .line 711
    .local v2, "otm":Ljavax/net/ssl/X509TrustManager;
    invoke-interface {v2}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1d

    return-object v0

    .line 712
    .end local v1    # "otmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v2    # "otm":Ljavax/net/ssl/X509TrustManager;
    :catch_1d
    move-exception v1

    .line 713
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/google/appinventor/components/runtime/ImageBot;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Getting System Certificates"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 714
    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method private loadImage(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 6
    .param p1, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 584
    const/4 v0, 0x0

    .line 585
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v1, Lcom/google/appinventor/components/runtime/ImageBot;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadImage source = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    instance-of v1, p1, Lcom/google/appinventor/components/runtime/Canvas;

    if-eqz v1, :cond_25

    .line 587
    move-object v1, p1

    check-cast v1, Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Canvas;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_49

    .line 588
    :cond_25
    instance-of v1, p1, Lcom/google/appinventor/components/runtime/Image;

    if-eqz v1, :cond_3b

    .line 589
    move-object v1, p1

    check-cast v1, Lcom/google/appinventor/components/runtime/Image;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Image;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_49

    .line 591
    :cond_3b
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 592
    .local v1, "sourceStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ImageBot;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 594
    .end local v1    # "sourceStr":Ljava/lang/String;
    :goto_49
    if-eqz v0, :cond_63

    .line 595
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/ImageBot;->size:I

    if-ne v1, v2, :cond_5c

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/ImageBot;->size:I

    if-ne v1, v2, :cond_5c

    .line 596
    return-object v0

    .line 598
    :cond_5c
    iget v1, p0, Lcom/google/appinventor/components/runtime/ImageBot;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 601
    :cond_63
    return-object v0
.end method

.method private loadMask(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 9
    .param p1, "mask"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 605
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ImageBot;->loadImage(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 606
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/ImageBot;->invert:Z

    if-eqz v1, :cond_33

    .line 608
    new-instance v1, Landroid/graphics/ColorMatrix;

    const/16 v2, 0x14

    new-array v2, v2, [F

    fill-array-data v2, :array_34

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 614
    .local v1, "transform":Landroid/graphics/ColorMatrix;
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 615
    .local v2, "filter":Landroid/graphics/ColorMatrixColorFilter;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 616
    .local v3, "paint":Landroid/graphics/Paint;
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 617
    iget v4, p0, Lcom/google/appinventor/components/runtime/ImageBot;->size:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 618
    .local v4, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 619
    .local v5, "canvas":Landroid/graphics/Canvas;
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 620
    move-object v0, v4

    .line 622
    .end local v1    # "transform":Landroid/graphics/ColorMatrix;
    .end local v2    # "filter":Landroid/graphics/ColorMatrixColorFilter;
    .end local v3    # "paint":Landroid/graphics/Paint;
    .end local v4    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "canvas":Landroid/graphics/Canvas;
    :cond_33
    return-object v0

    :array_34
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x437f0000    # 255.0f
    .end array-data
.end method

.method private sendRequest(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;)Ljava/lang/String;
    .registers 11
    .param p1, "request"    # Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/ImageBot$ImageException;
        }
    .end annotation

    .line 543
    const/4 v0, 0x0

    .line 544
    .local v0, "connection":Ljavax/net/ssl/HttpsURLConnection;
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ImageBot;->ensureSslSockFactory()V

    .line 545
    const/4 v1, -0x1

    .line 547
    .local v1, "responseCode":I
    const/4 v2, 0x0

    :try_start_6
    new-instance v3, Ljava/net/URL;

    const-string v4, "https://chatbot.appinventor.mit.edu/image/v1"

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 548
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    move-object v0, v4

    .line 549
    if-eqz v0, :cond_7a

    .line 550
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ImageBot;->sslSockFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 551
    const-string v4, "POST"

    invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 552
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 553
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->writeTo(Ljava/io/OutputStream;)V

    .line 554
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v4

    move v1, v4

    .line 555
    const/16 v4, 0xc8

    if-ne v1, v4, :cond_6c

    .line 556
    nop

    .line 557
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 556
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->parseFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    move-result-object v4

    .line 558
    .local v4, "response":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->getImage()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v5

    .line 559
    .local v5, "imageData":[B
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ImageBot;->getOutputFile()Ljava/io/File;

    move-result-object v6

    .line 560
    .local v6, "outFile":Ljava/io/File;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_4e} :catch_8b
    .catchall {:try_start_6 .. :try_end_4e} :catchall_89

    .line 562
    .local v7, "out":Ljava/io/FileOutputStream;
    :try_start_4e
    invoke-virtual {v7, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 563
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V
    :try_end_54
    .catchall {:try_start_4e .. :try_end_54} :catchall_66

    .line 565
    :try_start_54
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 566
    nop

    .line 567
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_60} :catch_8b
    .catchall {:try_start_54 .. :try_end_60} :catchall_89

    .line 576
    if-eqz v0, :cond_65

    .line 577
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 567
    :cond_65
    return-object v2

    .line 565
    :catchall_66
    move-exception v8

    :try_start_67
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 566
    nop

    .end local v0    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v1    # "responseCode":I
    .end local p1    # "request":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    throw v8

    .line 569
    .end local v4    # "response":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;
    .end local v5    # "imageData":[B
    .end local v6    # "outFile":Ljava/io/File;
    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v1    # "responseCode":I
    .restart local p1    # "request":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    :cond_6c
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/IOUtils;->readStreamAsString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 570
    .local v4, "errorMessage":Ljava/lang/String;
    new-instance v5, Lcom/google/appinventor/components/runtime/ImageBot$ImageException;

    invoke-direct {v5, v1, v4, v2, v2}, Lcom/google/appinventor/components/runtime/ImageBot$ImageException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcom/google/appinventor/components/runtime/ImageBot$ImageException-IA;)V

    .end local v0    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v1    # "responseCode":I
    .end local p1    # "request":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    throw v5
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_7a} :catch_8b
    .catchall {:try_start_67 .. :try_end_7a} :catchall_89

    .line 576
    .end local v3    # "url":Ljava/net/URL;
    .end local v4    # "errorMessage":Ljava/lang/String;
    .restart local v0    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v1    # "responseCode":I
    .restart local p1    # "request":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    :cond_7a
    if-eqz v0, :cond_7f

    .line 577
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 580
    :cond_7f
    new-instance v3, Lcom/google/appinventor/components/runtime/ImageBot$ImageException;

    const/16 v4, 0x194

    const-string v5, "Could not connect to proxy server"

    invoke-direct {v3, v4, v5, v2, v2}, Lcom/google/appinventor/components/runtime/ImageBot$ImageException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcom/google/appinventor/components/runtime/ImageBot$ImageException-IA;)V

    throw v3

    .line 576
    :catchall_89
    move-exception v2

    goto :goto_9d

    .line 572
    :catch_8b
    move-exception v3

    .line 573
    .local v3, "e":Ljava/io/IOException;
    :try_start_8c
    sget-object v4, Lcom/google/appinventor/components/runtime/ImageBot;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Got an IOException"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 574
    new-instance v4, Lcom/google/appinventor/components/runtime/ImageBot$ImageException;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5, v3, v2}, Lcom/google/appinventor/components/runtime/ImageBot$ImageException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcom/google/appinventor/components/runtime/ImageBot$ImageException-IA;)V

    .end local v0    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v1    # "responseCode":I
    .end local p1    # "request":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    throw v4
    :try_end_9d
    .catchall {:try_start_8c .. :try_end_9d} :catchall_89

    .line 576
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v1    # "responseCode":I
    .restart local p1    # "request":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    :goto_9d
    if-eqz v0, :cond_a2

    .line 577
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 579
    :cond_a2
    throw v2
.end method


# virtual methods
.method public ApiKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "apiKey"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 252
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ImageBot;->apiKey:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public CreateImage(Ljava/lang/String;)V
    .registers 3
    .param p1, "description"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 298
    new-instance v0, Lcom/google/appinventor/components/runtime/ImageBot$1;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/ImageBot$1;-><init>(Lcom/google/appinventor/components/runtime/ImageBot;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 304
    return-void
.end method

.method public EditImage(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 8
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "description"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 319
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ImageBot;->loadImage(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 320
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_f

    .line 321
    new-instance v1, Lcom/google/appinventor/components/runtime/ImageBot$2;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/appinventor/components/runtime/ImageBot$2;-><init>(Lcom/google/appinventor/components/runtime/ImageBot;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 338
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_2b

    .line 328
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_f
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ImageBot;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/ImageBot$3;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/ImageBot$3;-><init>(Lcom/google/appinventor/components/runtime/ImageBot;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 334
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;-><init>()V

    .end local p1    # "source":Ljava/lang/Object;
    .end local p2    # "description":Ljava/lang/String;
    throw v1
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_23} :catch_23

    .line 336
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local p1    # "source":Ljava/lang/Object;
    .restart local p2    # "description":Ljava/lang/String;
    :catch_23
    move-exception v0

    .line 337
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/google/appinventor/components/runtime/ImageBot;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Unable to read source image"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2b
    return-void
.end method

.method public EditImageWithMask(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7
    .param p1, "imageSource"    # Ljava/lang/Object;
    .param p2, "maskSource"    # Ljava/lang/Object;
    .param p3, "prompt"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 353
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ImageBot;->loadImage(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 354
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/ImageBot;->loadMask(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 355
    .local v1, "mask":Landroid/graphics/Bitmap;
    if-nez v0, :cond_b

    .line 356
    return-void

    .line 358
    :cond_b
    if-nez v1, :cond_e

    .line 359
    return-void

    .line 361
    :cond_e
    new-instance v2, Lcom/google/appinventor/components/runtime/ImageBot$4;

    invoke-direct {v2, p0, v0, v1, p3}, Lcom/google/appinventor/components/runtime/ImageBot$4;-><init>(Lcom/google/appinventor/components/runtime/ImageBot;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_17

    .line 369
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "mask":Landroid/graphics/Bitmap;
    goto :goto_1f

    .line 367
    :catch_17
    move-exception v0

    .line 368
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/google/appinventor/components/runtime/ImageBot;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Unable to read source image"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1f
    return-void
.end method

.method public ErrorOccurred(ILjava/lang/String;)V
    .registers 10
    .param p1, "responseCode"    # I
    .param p2, "responseText"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 405
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v4, "ErrorOccurred"

    invoke-static {p0, v4, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 406
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ImageBot;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v5, 0x10cc

    new-array v0, v0, [Ljava/lang/Object;

    .line 407
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v3

    aput-object p2, v0, v2

    .line 406
    invoke-virtual {v1, p0, v4, v5, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 409
    :cond_26
    return-void
.end method

.method public ImageCreated(Ljava/lang/String;)V
    .registers 4
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 383
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "ImageCreated"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 384
    return-void
.end method

.method public ImageEdited(Ljava/lang/String;)V
    .registers 4
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 393
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "ImageEdited"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 394
    return-void
.end method

.method public InvertMask(Z)V
    .registers 2
    .param p1, "invert"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 264
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ImageBot;->invert:Z

    .line 265
    return-void
.end method

.method public InvertMask()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 269
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ImageBot;->invert:Z

    return v0
.end method

.method public Size()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 286
    iget v0, p0, Lcom/google/appinventor/components/runtime/ImageBot;->size:I

    return v0
.end method

.method public Size(I)V
    .registers 2
    .param p1, "size"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "256"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 281
    iput p1, p0, Lcom/google/appinventor/components/runtime/ImageBot;->size:I

    .line 282
    return-void
.end method

.method public Token(Ljava/lang/String;)V
    .registers 2
    .param p1, "token"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->ADVANCED:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The MIT Access token to use. MIT App Inventor will automatically fill this value in. You should not need to change it."
        userVisible = true
    .end annotation

    .line 241
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ImageBot;->token:Ljava/lang/String;

    .line 242
    return-void
.end method
