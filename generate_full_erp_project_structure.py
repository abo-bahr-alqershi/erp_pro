import os

# -------------------- الهيكلية الكاملة حسب ملفات md --------------------

structure = {
    "src": {
        "Domain": {
            "Common": {
                "Entities": ["BaseEntity.cs", "AuditableEntity.cs", "AggregateRoot.cs"],
                "ValueObjects": ["Money.cs", "Address.cs"],
                "Primitives": ["EntityId.cs"],
                "Aggregates": ["AggregateRoot.cs"],
                "Events": ["IDomainEvent.cs", "AbstractDomainEvent.cs"],
                "Enums": ["CurrencyType.cs"],
                "Exceptions": ["BusinessException.cs", "NotFoundException.cs"],
                "Interfaces": ["IRepository.cs", "IUnitOfWork.cs", "IDomainEventDispatcher.cs"]
            },
            "ERP": {
                "Accounts": {
                    "Entities": ["Account.cs", "AccountGroup.cs", "AccountType.cs"],
                    "ValueObjects": ["AccountCode.cs"],
                    "Events": ["AccountCreatedEvent.cs"],
                    "Enums": ["AccountNature.cs", "AccountStatus.cs"],
                    "Exceptions": ["InvalidAccountTypeException.cs"]
                },
                "Journals": {
                    "Entities": ["JournalEntry.cs", "JournalDetail.cs"],
                    "Events": ["JournalPostedEvent.cs"],
                    "Enums": ["JournalType.cs", "JournalStatus.cs"]
                },
                "Invoices": {
                    "Entities": ["Invoice.cs", "InvoiceLine.cs"],
                    "ValueObjects": ["TaxDetail.cs"],
                    "Events": ["InvoicePaidEvent.cs"],
                    "Enums": ["InvoiceType.cs", "InvoiceStatus.cs"]
                },
                "Customers": {
                    "Entities": ["Customer.cs", "CustomerGroup.cs"],
                    "ValueObjects": ["CustomerAddress.cs"],
                    "Events": ["CustomerCreatedEvent.cs"]
                },
                "Suppliers": {
                    "Entities": ["Supplier.cs", "SupplierGroup.cs"],
                    "ValueObjects": ["SupplierAddress.cs"],
                    "Events": ["SupplierCreatedEvent.cs"]
                },
                "Products": {
                    "Entities": ["Product.cs", "ProductCategory.cs", "ProductUnit.cs"],
                    "ValueObjects": ["ProductBarcode.cs"],
                    "Events": ["ProductCreatedEvent.cs"],
                    "Enums": ["ProductType.cs", "ProductStatus.cs"]
                },
                "Warehouses": {
                    "Entities": ["Warehouse.cs", "WarehouseLocation.cs"],
                    "Events": ["WarehouseCreatedEvent.cs"]
                },
                "Sales": {
                    "Entities": ["SalesOrder.cs", "SalesOrderLine.cs"],
                    "Events": ["SalesOrderCreatedEvent.cs"],
                    "Enums": ["SalesOrderStatus.cs"]
                },
                "Purchases": {
                    "Entities": ["PurchaseOrder.cs", "PurchaseOrderLine.cs"],
                    "Events": ["PurchaseOrderCreatedEvent.cs"],
                    "Enums": ["PurchaseOrderStatus.cs"]
                },
                "HR": {
                    "Entities": ["Employee.cs", "Department.cs", "JobTitle.cs", "SalaryRecord.cs"],
                    "Events": ["EmployeeHiredEvent.cs"]
                },
                "Users": {
                    "Entities": ["User.cs", "Role.cs", "UserRole.cs"],
                    "Events": ["UserCreatedEvent.cs"],
                    "Enums": ["UserStatus.cs"]
                },
                "Settings": {
                    "Entities": ["SystemSetting.cs", "NumberingSetting.cs"],
                    "Events": ["SettingsChangedEvent.cs"]
                },
                "Notifications": {
                    "Entities": ["Notification.cs", "NotificationTemplate.cs"],
                    "Events": ["NotificationSentEvent.cs"]
                },
                "Reports": {
                    "Entities": ["ReportDefinition.cs", "ReportParameter.cs"],
                    "Events": ["ReportGeneratedEvent.cs"]
                },
                "Audit": {
                    "Entities": ["AuditLog.cs", "ChangeHistory.cs"],
                    "Events": ["AuditLogCreatedEvent.cs"]
                },
                "Inventory": {
                    "Entities": ["InventoryItem.cs", "InventoryTransaction.cs", "StockBalance.cs"],
                    "Events": ["InventoryAdjustedEvent.cs"]
                },
                "FixedAssets": {
                    "Entities": ["FixedAsset.cs", "DepreciationRecord.cs"],
                    "Events": ["AssetPurchasedEvent.cs"]
                },
                "Projects": {
                    "Entities": ["Project.cs", "ProjectTask.cs"],
                    "Events": ["ProjectCreatedEvent.cs"]
                },
                "Contracts": {
                    "Entities": ["Contract.cs", "ContractParty.cs"],
                    "Events": ["ContractSignedEvent.cs"]
                },
                "Loans": {
                    "Entities": ["Loan.cs", "LoanPayment.cs"],
                    "Events": ["LoanCreatedEvent.cs"]
                },
                "Payroll": {
                    "Entities": ["PayrollRecord.cs", "PayrollDetail.cs"],
                    "Events": ["PayrollProcessedEvent.cs"]
                },
                "Taxes": {
                    "Entities": ["Tax.cs", "TaxRate.cs"],
                    "Events": ["TaxRateChangedEvent.cs"]
                },
                "Banking": {
                    "Entities": ["BankAccount.cs", "BankTransaction.cs"],
                    "Events": ["BankTransferEvent.cs"]
                },
                "POS": {
                    "Entities": ["POSReceipt.cs", "POSSession.cs"],
                    "Events": ["POSReceiptIssuedEvent.cs"]
                },
                "CRM": {
                    "Entities": ["Lead.cs", "Opportunity.cs"],
                    "Events": ["LeadConvertedEvent.cs"]
                },
                "ECommerce": {
                    "Entities": ["EOrder.cs", "EOrderItem.cs"],
                    "Events": ["EOrderPlacedEvent.cs"]
                },
                "Manufacturing": {
                    "Entities": ["WorkOrder.cs", "BillOfMaterials.cs"],
                    "Events": ["WorkOrderCreatedEvent.cs"]
                }
            }
        },

        "Application": {
            "Abstractions": {
                "Interfaces": [
                    "ICurrentUserService.cs", "IDateTimeService.cs", "IEmailService.cs",
                    "INotificationService.cs", "IReportingService.cs", "IFileStorageService.cs"
                ],
                "Services": [
                    "CurrentUserService.cs", "DateTimeService.cs", "EmailService.cs",
                    "NotificationService.cs", "ReportingService.cs"
                ]
            },
            "Behaviors": [
                "ValidationBehavior.cs", "LoggingBehavior.cs", "PerformanceBehavior.cs",
                "CachingBehavior.cs", "ExceptionHandlingBehavior.cs"
            ],
            "Common": {
                "Configurations": ["MappingProfile.cs", "ValidationConfig.cs"],
                "Extensions": ["StringExtensions.cs", "DateTimeExtensions.cs"],
                "Mappings": ["DtoToEntityMapping.cs", "EntityToDtoMapping.cs"],
                "Responses": ["Result.cs", "ApiResponse.cs", "ErrorResponse.cs", "PaginatedResult.cs"],
                "Serialization": ["JsonSerializerService.cs"],
                "Specifications": ["PaginatedSpecification.cs"],
                "Validators": ["EmailValidator.cs", "PaginationValidator.cs"]
            },
            "ContextValidators": ["PermissionValidator.cs", "UserContextValidator.cs", "OrganizationContextValidator.cs"],
            "Enums": ["ApplicationStatus.cs", "NotificationType.cs", "UserRole.cs", "ReportType.cs", "PaginationOrder.cs"],
            "Exceptions": [
                "ApplicationException.cs", "ValidationException.cs", "NotFoundException.cs",
                "UnauthorizedAccessException.cs", "ConflictException.cs", "ForbiddenException.cs"
            ],
            "Features": {
                # مثال لكل موديول (يمكنك تكرار أو تطوير القائمة لجميع الموديولات كما ترغب)
                "Accounts": {
                    "Commands": [
                        "CreateAccountCommand.cs", "UpdateAccountCommand.cs", "DeleteAccountCommand.cs",
                        "ArchiveAccountCommand.cs", "CreateAccountGroupCommand.cs", "UpdateAccountGroupCommand.cs"
                    ],
                    "Queries": [
                        "GetAccountByIdQuery.cs", "GetAccountsListQuery.cs", "GetAccountGroupTreeQuery.cs"
                    ],
                    "Dtos": ["AccountDto.cs", "AccountGroupDto.cs", "AccountTypeDto.cs"],
                    "Handlers": [
                        "CreateAccountHandler.cs", "ArchiveAccountHandler.cs", "GetAccountsListHandler.cs"
                    ],
                    "Validators": ["CreateAccountValidator.cs", "ArchiveAccountValidator.cs"]
                },
                "Journals": {
                    "Commands": [
                        "CreateJournalCommand.cs", "UpdateJournalCommand.cs", "DeleteJournalCommand.cs",
                        "PostJournalCommand.cs", "ReverseJournalCommand.cs", "ApproveJournalCommand.cs"
                    ],
                    "Queries": [
                        "GetJournalByIdQuery.cs", "GetJournalsListQuery.cs", "SearchJournalsQuery.cs"
                    ],
                    "Dtos": ["JournalDto.cs", "JournalDetailDto.cs"],
                    "Handlers": [
                        "CreateJournalHandler.cs", "PostJournalHandler.cs", "GetJournalsListHandler.cs"
                    ],
                    "Validators": ["CreateJournalValidator.cs", "PostJournalValidator.cs"]
                }
                # ... أكمل بقية الموديولات بنفس النمط (Invoices, Customers, ...)
            },
            "Helper": []
        },

        "Infrastructure": {
            "Data": {
                "Contexts": ["ApplicationDbContext.cs", "ApplicationDbContextFactory.cs"],
                "Migrations": ["202401010001_InitialCreate.cs", "README.md"],
                "Repositories": [
                    "GenericRepository.cs", "AccountRepository.cs", "JournalRepository.cs", "InvoiceRepository.cs"
                ],
                "Seed": ["DbSeeder.cs", "SeedData.sql"]
            },
            "Identity": [
                "ApplicationUser.cs", "ApplicationRole.cs", "ApplicationUserStore.cs",
                "IdentityDbContext.cs", "IdentityInitializer.cs"
            ],
            "Services": {
                "Email": ["SmtpMailService.cs", "SendGridMailService.cs", "MailTemplateRenderer.cs", "MailSettings.cs"],
                "Sms": ["SmsService.cs"],
                "Files": ["FileStorageService.cs"]
            },
            "External": {
                "PaymentGateways": ["PaymentGatewayService.cs"],
                "ERPIntegrations": ["ExternalErpConnector.cs"]
            },
            "Configurations": ["DbConfiguration.cs", "MailConfiguration.cs", "LoggingConfiguration.cs", "IdentityConfiguration.cs", "ThirdPartyConfiguration.cs"],
            "DependencyInjection": ["DependencyInjection.cs", "MediatRRegistration.cs", "RepositoryRegistration.cs", "ServiceRegistration.cs"],
            "Extensions": ["InfrastructureExtensions.cs"]
        },

        "Infrastructure.Shared": {
            "Constants": ["GlobalConstants.cs", "RegexConstants.cs", "ErrorMessages.cs", "ClaimTypesConstants.cs"],
            "Extensions": ["StringExtensions.cs", "DateTimeExtensions.cs", "EnumExtensions.cs", "ClaimsPrincipalExtensions.cs", "QueryableExtensions.cs"],
            "Helpers": ["EncryptionHelper.cs", "HashingHelper.cs", "EmailHelper.cs", "FileHelper.cs", "UrlHelper.cs"],
            "Localization": ["SharedResources.cs", "LocalizationManager.cs", "cultures.json", "ar.json", "en.json"],
            "Models": ["ApiErrorModel.cs", "PaginatedList.cs", "FileUploadModel.cs", "NotificationModel.cs"],
            "Resources": ["SharedResources.resx", "EmailTemplates/WelcomeTemplate.html", "EmailTemplates/ResetPasswordTemplate.html"],
            "Services": ["EncryptionService.cs", "LocalizationService.cs", "SharedMailService.cs", "FileValidationService.cs"],
            "Settings": ["AppSettings.cs", "JwtSettings.cs", "MailSettings.cs", "StorageSettings.cs"],
            "Specifications": ["ISpecification.cs", "SpecificationEvaluator.cs", "BaseSpecification.cs"],
            "Utilities": ["RandomGenerator.cs", "BarcodeGenerator.cs", "PasswordGenerator.cs", "QrCodeGenerator.cs"],
            "ValueObjects": ["Email.cs", "PhoneNumber.cs", "Address.cs"],
            "Validation": ["ValidationMessages.cs", "ValidationHelper.cs", "EmailValidator.cs", "PhoneValidator.cs"],
            "Integration": ["ExternalApiClient.cs", "SharedWebhookPublisher.cs"],
            "Middlewares": ["ExceptionMiddleware.cs", "LocalizationMiddleware.cs", "RequestLoggingMiddleware.cs"],
            "DTOs": ["SharedResultDto.cs", "LookupDto.cs", "KeyValueDto.cs"]
        },

        "Shared": {
            "Constants": ["AppConstants.cs", "RegexConstants.cs", "ErrorMessages.cs", "ClaimTypes.cs"],
            "DTOs": ["LookupDto.cs", "KeyValueDto.cs", "PaginationDto.cs", "SharedResultDto.cs"],
            "Enums": ["UserRole.cs", "Gender.cs", "StatusEnum.cs", "LanguageEnum.cs"],
            "Events": ["DomainEvent.cs", "IntegrationEvent.cs", "NotificationEvent.cs"],
            "Exceptions": ["BusinessException.cs", "NotFoundException.cs", "UnauthorizedException.cs", "ValidationException.cs", "ForbiddenException.cs"],
            "Extensions": ["StringExtensions.cs", "DateTimeExtensions.cs", "EnumExtensions.cs", "CollectionExtensions.cs"],
            "Helpers": ["EmailHelper.cs", "EncryptionHelper.cs", "FileHelper.cs", "UrlHelper.cs", "MathHelper.cs"],
            "Interfaces": ["ILocalizable.cs", "IAuditable.cs", "IHasCreationTime.cs", "IHasModificationTime.cs"],
            "Localization": ["SharedResources.cs", "cultures.json", "ar.json", "en.json"],
            "Models": ["ApiResponseModel.cs", "ExceptionDetailsModel.cs", "PaginatedListModel.cs", "NotificationModel.cs"],
            "Resources": ["SharedResources.resx", "ValidationMessages.resx", "EmailTemplates/WelcomeEmail.html", "EmailTemplates/ResetPasswordEmail.html"],
            "Settings": ["AppSettings.cs", "JwtSettings.cs", "MailSettings.cs", "StorageSettings.cs"],
            "Utilities": ["RandomGenerator.cs", "BarcodeGenerator.cs", "PasswordGenerator.cs", "QrCodeGenerator.cs"],
            "ValueObjects": ["Email.cs", "PhoneNumber.cs", "Address.cs", "Money.cs"],
            "Validation": ["ValidationMessages.cs", "EmailValidator.cs", "PhoneNumberValidator.cs", "NameValidator.cs"]
        },

        "Server": {
            "Controllers": [
                "AccountsController.cs", "JournalsController.cs", "InvoicesController.cs", "CustomersController.cs", "SuppliersController.cs", "ProductsController.cs",
                "WarehousesController.cs", "SalesController.cs", "PurchasesController.cs", "HRController.cs", "UsersController.cs", "SettingsController.cs", "NotificationsController.cs",
                "ReportsController.cs", "AuditController.cs", "InventoryController.cs", "FixedAssetsController.cs", "ProjectsController.cs", "ContractsController.cs",
                "LoansController.cs", "PayrollController.cs", "TaxesController.cs", "BankingController.cs", "POSController.cs", "CRMController.cs", "ECommerceController.cs", "ManufacturingController.cs"
            ],
            "Extensions": ["ServiceCollectionExtensions.cs", "ApplicationBuilderExtensions.cs", "SwaggerExtensions.cs", "MiddlewareExtensions.cs", "LocalizationExtensions.cs"],
            "Filters": ["ApiExceptionFilter.cs", "ValidationFilter.cs", "AuthorizationFilter.cs", "AuditActionFilter.cs"],
            "Middlewares": ["ExceptionMiddleware.cs", "RequestLoggingMiddleware.cs", "LocalizationMiddleware.cs", "JwtTokenMiddleware.cs"],
            "Models": ["ApiResponseModel.cs", "ErrorModel.cs", "PaginationParameters.cs", "LoginRequestModel.cs", "RegisterRequestModel.cs", "ChangePasswordModel.cs", "FileUploadModel.cs", "NotificationRequestModel.cs"],
            "OpenApi": ["SwaggerConfig.cs", "SwaggerDoc.xml", "SecuritySchemeConfig.cs"],
            "Properties": ["launchSettings.json"],
            "Resources": ["ar.json", "en.json", "SharedResources.resx"],
            "Services": ["JwtTokenService.cs", "FileService.cs", "LocalizationService.cs", "ApiUserContextService.cs"],
            "Settings": ["SwaggerSettings.cs", "CorsSettings.cs", "ApiSettings.cs", "LocalizationSettings.cs"],
            "Validation": ["ModelValidationExtensions.cs", "ApiValidationResponseFactory.cs", "ApiValidationMessages.cs"],
            "Program.cs": "",
            "Startup.cs": ""
        },

        "Client": {
            "Views": {
                "Accounts": ["AccountsView.xaml"], "Journals": ["JournalsView.xaml"], "Invoices": ["InvoicesView.xaml"], "Customers": ["CustomersView.xaml"],
                "Suppliers": ["SuppliersView.xaml"], "Products": ["ProductsView.xaml"], "Warehouses": ["WarehousesView.xaml"], "Sales": ["SalesView.xaml"],
                "Purchases": ["PurchasesView.xaml"], "HR": ["HRView.xaml"], "Users": ["UsersView.xaml"], "Settings": ["SettingsView.xaml"], "Notifications": ["NotificationsView.xaml"],
                "Reports": ["ReportsView.xaml"], "Audit": ["AuditView.xaml"], "Inventory": ["InventoryView.xaml"], "FixedAssets": ["FixedAssetsView.xaml"], "Projects": ["ProjectsView.xaml"],
                "Contracts": ["ContractsView.xaml"], "Loans": ["LoansView.xaml"], "Payroll": ["PayrollView.xaml"], "Taxes": ["TaxesView.xaml"], "Banking": ["BankingView.xaml"],
                "POS": ["POSView.xaml"], "CRM": ["CRMView.xaml"], "ECommerce": ["ECommerceView.xaml"], "Manufacturing": ["ManufacturingView.xaml"]
            },
            "ViewModels": {
                "Accounts": ["AccountsViewModel.cs"], "Journals": ["JournalsViewModel.cs"], "Invoices": ["InvoicesViewModel.cs"], "Customers": ["CustomersViewModel.cs"],
                "Suppliers": ["SuppliersViewModel.cs"], "Products": ["ProductsViewModel.cs"], "Warehouses": ["WarehousesViewModel.cs"], "Sales": ["SalesViewModel.cs"],
                "Purchases": ["PurchasesViewModel.cs"], "HR": ["HRViewModel.cs"], "Users": ["UsersViewModel.cs"], "Settings": ["SettingsViewModel.cs"], "Notifications": ["NotificationsViewModel.cs"],
                "Reports": ["ReportsViewModel.cs"], "Audit": ["AuditViewModel.cs"], "Inventory": ["InventoryViewModel.cs"], "FixedAssets": ["FixedAssetsViewModel.cs"], "Projects": ["ProjectsViewModel.cs"],
                "Contracts": ["ContractsViewModel.cs"], "Loans": ["LoansViewModel.cs"], "Payroll": ["PayrollViewModel.cs"], "Taxes": ["TaxesViewModel.cs"], "Banking": ["BankingViewModel.cs"],
                "POS": ["POSViewModel.cs"], "CRM": ["CRMViewModel.cs"], "ECommerce": ["ECommerceViewModel.cs"], "Manufacturing": ["ManufacturingViewModel.cs"]
            },
            "Models": ["AccountModel.cs", "InvoiceModel.cs", "UserModel.cs"],
            "Services": {
                "Api": ["AccountApiService.cs", "InvoiceApiService.cs"],
                "Navigation": ["NavigationService.cs"],
                "Dialog": ["DialogService.cs"],
                "Authentication": ["AuthService.cs"],
                "Notification": ["ToastService.cs"]
            },
            "Commands": ["RelayCommand.cs", "SaveAccountCommand.cs"],
            "Converters": ["StatusToColorConverter.cs", "BooleanToVisibilityConverter.cs"],
            "Behaviors": ["DragDropBehavior.cs", "NumericInputBehavior.cs"],
            "Templates": ["CustomButtonTemplate.xaml"],
            "Styles": ["GlobalStyles.xaml"],
            "Resources": {
                "Images": [],
                "Icons": [],
                "Strings.ar.xaml": "",
                "Strings.en.xaml": ""
            },
            "Themes": ["LightTheme.xaml", "DarkTheme.xaml"],
            "Helpers": ["DateHelper.cs", "ValidationHelper.cs", "FileHelper.cs"],
            "Extensions": ["StringExtensions.cs", "DateExtensions.cs"],
            "Localization": ["LocalizationManager.cs", "ar.xaml", "en.xaml"],
            "Validation": ["EmailValidator.cs", "InvoiceValidator.cs"],
            "Assets": {
                "Images": ["logo.png"],
                "Icons": ["add.png"],
                "Fonts": ["CustomFont.ttf"]
            },
            "App.xaml": "",
            "App.xaml.cs": "",
            "MainWindow.xaml": "",
            "MainWindow.xaml.cs": "",
            "App.config": ""
        },

        "Client.Infrastructure": {
            "Api": {
                "Clients": ["BaseApiClient.cs", "AccountsApiClient.cs", "InvoicesApiClient.cs"],
                "Endpoints": ["ApiRoutes.cs", "EndpointConstants.cs"],
                "Models": ["ApiResponseModel.cs", "PaginationResponse.cs"],
                "Mappers": ["ApiToDomainMapper.cs"],
                "Requests": ["CreateAccountRequest.cs", "LoginRequest.cs"],
                "Responses": ["AccountResponse.cs", "LoginResponse.cs"]
            },
            "Authentication": ["AuthService.cs", "TokenProvider.cs", "LoginManager.cs"],
            "Authorization": ["AuthorizationService.cs", "PermissionChecker.cs"],
            "Caching": ["MemoryCacheService.cs", "LocalCacheService.cs"],
            "Connectivity": ["NetworkMonitor.cs", "ConnectivityService.cs"],
            "DependencyInjection": ["DependencyInjection.cs"],
            "Exceptions": ["ApiException.cs", "NetworkException.cs", "UnauthorizedException.cs", "ExceptionHandler.cs"],
            "Extensions": ["HttpResponseExtensions.cs", "SerializationExtensions.cs"],
            "Identity": ["CurrentUserProvider.cs", "SessionManager.cs"],
            "Localization": ["LocalizationProvider.cs", {"LanguageResources": ["ar.json", "en.json"]}],
            "Logging": ["Logger.cs", "FileLogger.cs", "RemoteLogger.cs"],
            "Notifications": ["NotificationService.cs", "ToastNotifier.cs"],
            "Persistence": ["LocalDbContext.cs", {"Repository": ["LocalAccountRepository.cs", "LocalInvoiceRepository.cs"]}],
            "Resources": ["Certificates", "Icons"],
            "Security": ["EncryptionService.cs", "HashingService.cs"],
            "Services": ["FileDownloadService.cs", "FileUploadService.cs", "ExportService.cs", "PrintService.cs"],
            "Settings": ["AppSettings.cs", "ApiSettings.cs", "UserSettings.cs"],
            "Storage": ["FileStorageService.cs", "TempStorageService.cs"],
            "Validation": ["ApiRequestValidator.cs", "AuthValidator.cs"],
            "Helpers": ["SerializationHelper.cs", "UrlBuilder.cs", "JsonHelper.cs"],
            "Utilities": ["RetryPolicy.cs", "NetworkUtils.cs"]
        }
    }
}

# -------------------- دالة إنشاء كل شيء --------------------

def touch_file(path, content=""):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    if not os.path.exists(path):
        with open(path, "w", encoding="utf-8") as f:
            f.write(content)

def create_structure(base, struct):
    if isinstance(struct, dict):
        for name, content in struct.items():
            full_path = os.path.join(base, name)
            if isinstance(content, dict) or isinstance(content, list):
                os.makedirs(full_path, exist_ok=True)
                create_structure(full_path, content)
                # README لكل مجلد
                readme = os.path.join(full_path, "README.md")
                if not os.path.exists(readme):
                    with open(readme, "w", encoding="utf-8") as f:
                        f.write(f"# {name}\n\nتم إنشاء هذا المجلد تلقائيًا.")
            else:
                touch_file(full_path, f"// {name}\n// تم إنشاؤه تلقائيًا.")
    elif isinstance(struct, list):
        for item in struct:
            if isinstance(item, str):
                touch_file(os.path.join(base, item), f"// {item}\n// تم إنشاؤه تلقائيًا.")
            elif isinstance(item, dict):
                create_structure(base, item)

# -------------------- تنفيذ السكريبت --------------------

if __name__ == "__main__":
    create_structure(".", structure)
    print("\n✅ تم إنشاء جميع المجلدات والملفات التفصيلية للمشروع كما في ملفات الهيكلة.\n")